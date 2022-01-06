CC := gcc

BUILD_DIR := build
MAIN := ./main.c
BIN := ./application.bin

ENN_ROOT := /Users/jenny/projects/Enn/
include $(ENN_ROOT)/Makefile

.PHONY: all clean

$(BIN_DIR):
	@mkdir -p $@

$(OBJ_DIR)/%.o:  $(SRC_DIR)/%.c
	@mkdir -p $(@D)
	$(CC) $(APIS) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(BIN): $(ENN_OBJ) | $(BIN_DIR)
	$(CC) $(ENN_FLAGS) $(MAIN) -o $@

clean:
	@$(RM) -rv $(BUILD_DIR)

all: $(BIN)