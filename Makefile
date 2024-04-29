CC = g++
SRC = src
OBJ = obj
INC = include
BIN = bin
OBJS = $(OBJ)/evalenum.o
CFLAGS = -Wall -g -c -I $(INC) -std=c++11

EXE = $(BIN)/pa9.out

.PHONY: all clean

run: all
	$(EXE)

all: $(EXE)

$(BIN)/pa9.out: $(OBJS)
	$(CC) -std=c++11 -g -o $(BIN)/pa9.out $(OBJS)

$(OBJ)/evalenum.o: $(SRC)/evalenum.cpp
	$(CC) $(CFLAGS) -o $(OBJ)/evalenum.o $(SRC)/evalenum.cpp

clean:
	rm -f $(EXE) $(OBJS) gmon.out