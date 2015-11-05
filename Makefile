CPP = g++
OPT = -O3
OPT = -g
WARN = -Wall
ERR = -Werror

CFLAGS = $(OPT) $(INC) $(LIB)

SIM_SRC = cachesim.cpp

SIM_OBJ = cachesim.o

all: smp_cache
	@echo "Compilation Done ---> nothing else to make :) "

smp_cache: $(SIM_OBJ)
	$(CPP) -o smp_cache $(CFLAGS) $(SIM_OBJ) -lm
	@echo "----------------------------------------------------------"
	@echo "-----------FALL15-506 SMP SIMULATOR (SMP_CACHE)-----------"
	@echo "----------------------------------------------------------"
 
.cpp.o:
	$(CPP) $(CFLAGS)  -c $*.cpp

clean:
	rm -f *.o smp_cache

clobber:
	rm -f *.o


