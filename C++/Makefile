# Makefile to compile and run the C++ base64 encoding program

# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall

# Output binary name
TARGET = helper

# Source file
SRC = helper.cpp

# Default target to compile the program
all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

# Clean target to remove compiled binaries
clean:
	rm -f $(TARGET)

# Run the program after compiling
run: $(TARGET)
	./$(TARGET)

