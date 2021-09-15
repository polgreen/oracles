#include "utility_parser.h"

#include <solvers/smt2/smt2_parser.h>
#include <solvers/smt2/smt2_format.h>
#include <util/arith_tools.h>
#include <util/format_expr.h>
#include <util/namespace.h>
#include <util/symbol_table.h>
#include <util/simplify_expr.h>
#include <util/ieee_float.h>
#include <iostream>

class utility_parsert:public smt2_parsert
{
public:
  utility_parsert(std::istream &_in) : smt2_parsert(_in)
  {
  }

  double float2double()
  {
    const symbol_tablet symbol_table;
    const namespacet ns(symbol_table);
    exprt result;
    try{
    result = expression();
    simplify(result, ns);
    }
    catch(...)
    {
      std::cout<<"caught exception"<<std::endl;
      result = nil_exprt();
    }
        
    std::ostringstream stream;
    stream << format(result);
    // std::cout<<"result is "<< result.pretty()<<std::endl;


    if(result.id()!=ID_constant)
      throw error("expected constant");

    if(result.type().id()==ID_bool)
      throw error("expected numeric value, not bool");

    if(result.type().id()==ID_floatbv)
    {
      ieee_floatt float_result;
      float_result.from_expr(to_constant_expr(result));
      return float_result.to_double();
    }

    if(result.type().id()==ID_unsignedbv || result.type().id()==ID_signedbv)
    {
      mp_integer result_val;
      to_integer(to_constant_expr(result), result_val);
      return std::stod(integer2string(result_val, 10u));
    }

    return std::stod(id2string(to_constant_expr(result).get_value()));
  }

    double float2float()
  {
    const symbol_tablet symbol_table;
    const namespacet ns(symbol_table);
    exprt result;
    try{
    result = expression();
    simplify(result, ns);
    }
    catch(...)
    {
      std::cout<<"caught exception"<<std::endl;
      result = nil_exprt();
    }
        
    std::ostringstream stream;
    stream << format(result);
    // std::cout<<"result is "<< result.pretty()<<std::endl;


    if(result.id()!=ID_constant)
      throw error("expected constant");

    if(result.type().id()==ID_bool)
      throw error("expected numeric value, not bool");

    if(result.type().id()==ID_floatbv)
    {
      ieee_floatt float_result;
      float_result.from_expr(to_constant_expr(result));
      return float_result.to_float();
    }

    if(result.type().id()==ID_unsignedbv || result.type().id()==ID_signedbv)
    {
      mp_integer result_val;
      to_integer(to_constant_expr(result), result_val);
      return std::stod(integer2string(result_val, 10u));
    }

    return std::stod(id2string(to_constant_expr(result).get_value()));
  }

  int integer2int()
  {
    const symbol_tablet symbol_table;
    const namespacet ns(symbol_table);
    exprt result = expression();
    simplify(result, ns);
        
    std::ostringstream stream;
    stream << format(result);

    if(result.id()!=ID_constant)
      throw error("expected constant");

    if(result.type().id()==ID_bool)
      throw error("expected numeric value, not bool");

    if(result.type().id()==ID_floatbv)
    {
      ieee_floatt float_result;
      float_result.from_expr(to_constant_expr(result));
      mp_integer res_val = float_result.to_integer();
      return std::stoi(integer2string(res_val, 10u));
    }

    if(result.type().id()==ID_unsignedbv || result.type().id()==ID_signedbv)
    {
      mp_integer result_val;
      to_integer(to_constant_expr(result), result_val);
      return std::stoi(integer2string(result_val, 10u));
    }

    return std::stoi(id2string(to_constant_expr(result).get_value()));
  }

  bool boolean2bool()
  {
    const symbol_tablet symbol_table;
    const namespacet ns(symbol_table);
    exprt result = expression();
    simplify(result, ns);
        
    std::ostringstream stream;
    stream << format(result);
    // std::cout<<"result : " << result.pretty()<<std::endl;

    if(result == false_exprt())
      return false;

    if(result == true_exprt())
      return true;

    throw error("expected true or false");
  }

};


float float2float(std::istream &in)
{
  float result;
  try {

    result = utility_parsert(in).float2float();
    return result;
  }
  catch(...)
  {
    // std::cout<<"caught exception"<<std::endl;
    return 0;
  }

}

double float2double(std::istream &in)
{
  double result;
  try {

    result = utility_parsert(in).float2double();
    return result;
  }
  catch(...)
  {
    // std::cout<<"caught exception"<<std::endl;
    return 0;
  }
}
