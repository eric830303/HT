#Declare variables:
CC 			= g++
RM 			= rm -f
Flag_1 		= -w -g -o3
Flag_2 		= -w -g 
Flag_3 		= -w -o
Version 	= -std=c++11 -pthread
OBJDIR 		= obj
BINDIR      = bin
SRCDIR		= src

SRC			:= $(wildcard $(SRCDIR)/*.cpp)
INC			:= $(wildcard $(SRCDIR)/*.h)
OBJ			:= $(SRC:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
EXE			:= research


#The first target ex:all will be the final target
#Makefile below:

all: $(OBJ)
	$(CC) $(Version) $(Flag_3) $(EXE) $^
$(OBJDIR)/%.o: $(SRCDIR)/%.cpp $(INC)
	$(CC) $(Version) -c $< -o $@

.PHONY:clean
clean:
	$(RM) research $(OBJDIR)/*.o
.PHONY:clean
clean_file:
	$(RM) *.rpt *.cp *.vg
