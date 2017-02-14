CC = gcc
CFLAGS = -W -Wall
LDFLAGS = -lwiringPi
EXE_NAME = hello
OBJECTS = hello.o

$(EXE_NAME) : $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

all : $(EXE_NAME)

clean :
	rm -f *.o $(EXE_NAME)
