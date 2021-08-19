SRC = ../utility_parser/utility_parser.cpp is_stable.cpp

OBJ+= $(CPROVER_DIR)/src/ansi-c/ansi-c$(LIBEXT) \
      $(CPROVER_DIR)/src/assembler/assembler$(LIBEXT) \
      $(CPROVER_DIR)/src/linking/linking$(LIBEXT) \
      $(CPROVER_DIR)/src/big-int/big-int$(LIBEXT) \
      $(CPROVER_DIR)/src/goto-symex/goto-symex$(LIBEXT) \
      $(CPROVER_DIR)/src/goto-programs/goto-programs$(LIBEXT) \
      $(CPROVER_DIR)/src/pointer-analysis/pointer-analysis$(LIBEXT) \
      $(CPROVER_DIR)/src/analyses/analyses$(LIBEXT) \
      $(CPROVER_DIR)/src/langapi/langapi$(LIBEXT) \
      $(CPROVER_DIR)/src/solvers/solvers$(LIBEXT) \
      $(CPROVER_DIR)/src/analyses/dirty$(OBJEXT) \
      $(CPROVER_DIR)/src/util/util$(LIBEXT)

INCLUDES= -I $(CPROVER_DIR)/src  -I $(EIGEN_DIR) -I ..

LIBS =

include config.inc
include $(CPROVER_DIR)/src/config.inc
include $(CPROVER_DIR)/src/common

CLEANFILES = is_stable$(EXEEXT) 
all: is_stable$(EXEEXT) 

#stb_image$(OBJEXT): stb_image.c stb_image.h
#	$(CC) -c stb_image.c

#sin_oracle$(EXEEXT): sin_oracle.c
#	$(CC) $< -o $@

#sin_oracle8bits$(EXEEXT): sin_oracle8bits.c
#	$(CC) $< -o $@
 #
#cos_oracle$(EXEEXT): cos_oracle.c
#	$(CC) $< -o $@
#cos_oracle8bits$(EXEEXT): cos_oracle8bits.c
#	$(CC) $< -o $@



###############################################################################

is_stable$(EXEEXT): $(OBJ)
	$(LINKBIN)
