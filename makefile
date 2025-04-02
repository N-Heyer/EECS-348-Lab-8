#comp
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra

#exec name
TARGET = matrix

#source
SRC = matrix.cpp
OBJ = $(SRC:.cpp=.o)


$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJ)


%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

#clean
clean:
	rm -f $(OBJ) $(TARGET)
