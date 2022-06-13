#modify commands and folders here if necessary
BIN = ./bin/
SRC = ./src/
INC = ./src/
RM = rm -f
CC = gcc -g

all: clean $(BIN)dhbwadjlist.o $(BIN)dhbwgraphsolve.o  $(BIN)dhbwstudent.o $(BIN)dhbwstudentlist.o $(BIN)dhbwstudenttree.o $(BIN)dhbwstudentmap.o $(BIN)dhbwtest.o $(BIN)datastructures.o $(BIN)datastructures $(BIN)dhbwsortmisc.o $(BIN)dhbwsortsimple.o $(BIN)dhbwsortmerge.o $(BIN)dhbwsortheap.o $(BIN)sorting  $(BIN)dhbwmaze.o  $(BIN)dhbwmazesolve.o $(BIN)maze  $(BIN)graphs

clean:
	$(RM) $(BIN)*.o $(BIN)*.exe

$(BIN)dhbwstudent.o: $(SRC)dhbwstudent.c $(INC)dhbwstudent.h
	$(CC) -o $(BIN)/dhbwstudent.o -c $(SRC)dhbwstudent.c 

$(BIN)dhbwstudentlist.o: $(SRC)dhbwstudentlist.c $(INC)dhbwstudentlist.h
	$(CC) -o $(BIN)/dhbwstudentlist.o -c $(SRC)dhbwstudentlist.c 


$(BIN)dhbwstudenttree.o: $(SRC)dhbwstudenttree.c $(INC)dhbwstudenttree.h
	$(CC) -o $(BIN)/dhbwstudenttree.o -c $(SRC)dhbwstudenttree.c 

$(BIN)dhbwstudentmap.o: $(SRC)dhbwstudentmap.c $(INC)dhbwstudentmap.h
	$(CC) -o $(BIN)/dhbwstudentmap.o -c $(SRC)dhbwstudentmap.c 

$(BIN)dhbwtest.o: $(SRC)dhbwtest.c $(INC)dhbwtest.h
	$(CC) -o $(BIN)/dhbwtest.o -c $(SRC)dhbwtest.c

$(BIN)datastructures.o: $(SRC)datastructures.c 
	$(CC) -o $(BIN)/datastructures.o -c $(SRC)datastructures.c


$(BIN)datastructures: $(BIN)datastructures.o
	$(CC) -o $(BIN)datastructures $(BIN)datastructures.o $(BIN)dhbwtest.o $(BIN)dhbwadjlist.o $(BIN)dhbwstudent.o $(BIN)dhbwstudentlist.o $(BIN)dhbwstudenttree.o $(BIN)dhbwstudentmap.o

$(BIN)dhbwsortmisc.o: $(SRC)dhbwsortmisc.c $(INC)dhbwsortmisc.h
	$(CC) -o $(BIN)/dhbwsortmisc.o -c $(SRC)dhbwsortmisc.c

$(BIN)dhbwsortsimple.o: $(SRC)dhbwsortsimple.c $(INC)dhbwsortsimple.h
	$(CC) -o $(BIN)/dhbwsortsimple.o -c $(SRC)dhbwsortsimple.c

$(BIN)dhbwsortmerge.o: $(SRC)dhbwsortmerge.c $(INC)dhbwsortmerge.h
	$(CC) -o $(BIN)/dhbwsortmerge.o -c $(SRC)dhbwsortmerge.c


$(BIN)dhbwsortheap.o: $(SRC)dhbwsortheap.c $(INC)dhbwsortheap.h
	$(CC) -o $(BIN)/dhbwsortheap.o -c $(SRC)dhbwsortheap.c

$(BIN)sorting.o: $(SRC)sorting.c 
	$(CC) -o $(BIN)/sorting.o -c $(SRC)sorting.c

$(BIN)sorting: $(BIN)sorting.o
	$(CC) -o $(BIN)sorting $(BIN)sorting.o $(BIN)dhbwtest.o $(BIN)dhbwadjlist.o $(BIN)dhbwstudent.o $(BIN)dhbwstudentlist.o $(BIN)dhbwstudenttree.o $(BIN)dhbwstudentmap.o $(BIN)dhbwsortmisc.o $(BIN)dhbwsortsimple.o $(BIN)dhbwsortmerge.o $(BIN)dhbwsortheap.o

$(BIN)dhbwmaze.o: $(SRC)dhbwmaze.c $(INC)dhbwmaze.h
	$(CC) -o $(BIN)/dhbwmaze.o -c $(SRC)dhbwmaze.c	

$(BIN)dhbwmazesolve.o: $(SRC)dhbwmazesolve.c $(INC)dhbwmazesolve.h
	$(CC) -o $(BIN)/dhbwmazesolve.o -c $(SRC)dhbwmazesolve.c	

$(BIN)maze.o: $(SRC)maze.c 
	$(CC) -o $(BIN)/maze.o -c $(SRC)maze.c

$(BIN)maze: $(BIN)maze.o
	$(CC) -o $(BIN)maze $(BIN)maze.o  $(BIN)dhbwtest.o $(BIN)dhbwmaze.o $(BIN)dhbwmazesolve.o $(BIN)dhbwadjlist.o $(BIN)dhbwstudent.o $(BIN)dhbwstudentlist.o 

$(BIN)dhbwadjlist.o: $(SRC)dhbwadjlist.c $(INC)dhbwadjlist.h
	$(CC) -o $(BIN)/dhbwadjlist.o -c $(SRC)dhbwadjlist.c	

$(BIN)dhbwgraphsolve.o: $(SRC)dhbwgraphsolve.c $(INC)dhbwgraphsolve.h
	$(CC) -o $(BIN)/dhbwgraphsolve.o -c $(SRC)dhbwgraphsolve.c	



$(BIN)graphs.o: $(SRC)graphs.c 
	$(CC) -o $(BIN)/graphs.o -c $(SRC)graphs.c

$(BIN)graphs: $(BIN)graphs.o
	$(CC) -o $(BIN)graphs $(BIN)graphs.o $(BIN)dhbwtest.o $(BIN)dhbwadjlist.o $(BIN)dhbwgraphsolve.o $(BIN)dhbwstudent.o $(BIN)dhbwstudentlist.o 
