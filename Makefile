CXX = g++
CXXFLAGS = $(shell root-config --cflags)
ROOTLIBS = $(shell root-config --libs)

PROGRAM = nai_laser_on_off

all: $(PROGRAM)
%: %.cc
	$(CXX) $(CXXFLAGS) -c $@.cc -o $@.o
	$(CXX) $(CXXFLAGS) -o $@ $@.o $(ROOTLIBS)
clean:
	rm -f *.o *~
	rm -f $(PROGRAM)
