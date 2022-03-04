#TargetName	:	Dependencies
#<TAB>commands

PROJ_NAME = Departmental_System
SRC = main.c Departmental.c
ifdef OS
   RM = del /q
   FixPath = $(subst /, \,$1)
   EXEC = exe 
else
   ifeq ($(shell uname), Linux)
      RM = rm -rf
	  FixPath = $1
	  EXEC = out
	endif
endif

target : 
	gcc $(SRC) -o $(call FixPath,$(PROJ_NAME).&(EXEC))

run	: target
	 ./$(call FixPath,$(PROJ_NAME).$(EXEC))

static_analysis : 
	cppcheck --enable=all $(SRC)

clean	: 
	  $(RM) $(call FixPath,$(PROJ_NAME).$(EXEC))