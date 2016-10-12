exe = program.exe
objects = program.o \
			MainWindow.o
CompileOption = `pkg-config gtkmm-3.0 --cflags --libs` -mwindows -Wall -std=c++11 -s -O3

$(exe): $(objects)
	g++ -o $(exe) $(objects) $(CompileOption)
MainWindow.o:
	g++ -c MainWindow.cc $(CompileOption)
program.o:
	g++ -c program.cc $(CompileOption)

.PHONY : clean
clean :
	-rm $(exe) $(objects)
