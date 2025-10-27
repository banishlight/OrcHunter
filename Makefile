CXX:=g++
CXXFLAGS:= -Wall -Wextra -std=c++17 -MMD
LDFLAGS:= -lraylib
SRC_DIR:=src
INC_DIR:=inc
BUILD_DIR:=build
BIN_DIR:=bin
TARGET:=$(BIN_DIR)/OrcHunter

SRC:=$(shell find $(SRC_DIR) -name '*.cpp')
OBJ:=$(SRC:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)
DEPS:=$(OBJ:.o=.d)

.PHONY: default clean directories

default: directories $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(OBJ) -o $@ $(LDFLAGS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -I$(INC_DIR) -c $< -o $@

directories:
	mkdir -p $(BUILD_DIR) $(BIN_DIR)

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)

-include $(DEPS)
