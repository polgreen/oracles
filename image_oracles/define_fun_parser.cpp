#include "define_fun_parser.h"

#include <solvers/smt2/smt2_parser.h>
#include <solvers/smt2/smt2_format.h>
#include <iostream>

class smt2_define_fun_parsert:public smt2_parsert
{
public:
  smt2_define_fun_parsert(std::istream &_in) : smt2_parsert(_in)
  {
  }

  void replace_local_var(exprt &expr, const irep_idt &target, exprt &replacement)
  {
    if (expr.id() == ID_symbol)
    {
      if (to_symbol_expr(expr).get_identifier() == target)
        expr = replacement;
    }
    for (auto &op : expr.operands())
      replace_local_var(op, target, replacement);
  }

  void expand_let_expressions(exprt &expr)
  {
    if (expr.id() == ID_let)
    {
      auto &let_expr = to_let_expr(expr);
      for (unsigned int i = 0; i < let_expr.variables().size(); i++)
      {
        INVARIANT(let_expr.variables()[i].id() == ID_symbol,
                  "Let expression should have list of symbols, not " + let_expr.variables()[i].pretty());
        replace_local_var(let_expr.where(), to_symbol_expr(let_expr.variables()[i]).get_identifier(), let_expr.values()[i]);
      }
      expr = let_expr.where();
      expand_let_expressions(expr);
    }
    for (auto &op : expr.operands())
      expand_let_expressions(op);
  }



  define_fun_resultt define_fun()
  {
    bool isLambda=false;
    if(next_token() != smt2_tokenizert::OPEN)
      throw error("expected (define-fun");

    if(next_token() != smt2_tokenizert::SYMBOL)
      throw error("expected symbol");

    auto tmpbuffer = smt2_tokenizer.get_buffer();

    if(tmpbuffer=="lambda")
      isLambda=true;

    if(tmpbuffer != "define-fun" && !isLambda)
      throw error("expected (define-fun or (lambda");

    define_fun_resultt result;
    if(!isLambda)
    {
      if(next_token() != smt2_tokenizert::SYMBOL)
        throw error("expected a symbol after define-fun");
      result.id = smt2_tokenizer.get_buffer();
      const auto signature = function_signature_definition();
      result.type = signature.type;
      result.parameters = signature.parameters;
      // put the parameters into the scope and take care of hiding
      std::vector<std::pair<irep_idt, idt>> hidden_ids;

      for(const auto &pair : signature.ids_and_types())
      {
        auto insert_result =
          id_map.insert({pair.first, idt{idt::PARAMETER, pair.second}});
        if(!insert_result.second) // already there
        {
          auto &id_entry = *insert_result.first;
          hidden_ids.emplace_back(id_entry.first, std::move(id_entry.second));
          id_entry.second = idt{idt::PARAMETER, pair.second};
        }
      }
      result.body = expression();
    }
    else
    {
      result.id = "tweak";
      const auto lambda = lambda_definition();
      result.type = lambda.first.type;
      result.parameters = lambda.first.parameters;
      result.body = lambda.second;
    }
    
    expand_let_expressions(result.body);

    // restore renamings

    // check type of body
    if(result.type.id() == ID_mathematical_function)
    {
      const auto &f_signature = to_mathematical_function_type(result.type);
      if(result.body.type() != f_signature.codomain())
      {
        throw error() << "type mismatch in function definition: expected '"
                      << smt2_format(f_signature.codomain()) << "' but got '"
                      << smt2_format(result.body.type()) << '\'';
      }
    }
    else if(result.body.type() != result.type)
    {
      throw error() << "type mismatch in function definition: expected '"
                    << smt2_format(result.type) << "' but got '"
                    << smt2_format(result.body.type()) << '\'';
    }

    return result;
  }
};

define_fun_resultt define_fun_parser(std::istream &in)
{
  return smt2_define_fun_parsert(in).define_fun();
}
