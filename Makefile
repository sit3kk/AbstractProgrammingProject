# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wbuiltin-macro-redefined -pedantic -Werror

# Boost Libraries
BOOST_LIBS = -lboost_filesystem -lboost_system

# Path to header files (if they are in the main project directory)
INCLUDES = -I.

# Sources and executable file
SOURCES = $(wildcard *.cpp)
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = a.out

# Main build rule
all: $(EXECUTABLE)

# Build the executable
$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $(EXECUTABLE) $(OBJECTS) $(BOOST_LIBS)

# Rule to compile .cpp files to .o files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

# Clean rule to remove temporary files
clean:
	rm -f $(OBJECTS) $(EXECUTABLE)