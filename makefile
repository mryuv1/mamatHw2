
CC     = gcc #the name of the compiler command.
CFLAGS = -c -Wall -std=c99 main.c file0.c file1.c file2.c file3.c file4.c #the apllies of the compiling command.
OBJS   = main.o file0.o file1.o file2.o file3.o file4.o # object files of the program.
CCLINK =   -o  #flag of the linker.
EXEC = prog.exe #the name of the executable file.
RM = rm -fr *.exe $(OBJS) #command to delete all the executable files.


$(EXEC): $(OBJS)
	$(CC)  $(OBJS)  $(CCLINK) $(EXEC)

#link all the objects to prog.exe


%.o: %.c
	$(CC)  $(CFLAGS)  
#compile the c files to objects.

clean:
	$(RM)

#command to delete all the executable files.