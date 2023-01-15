$(info Build helloAosp..)
# the compiler: gcc for C program, define as g++ for C++
CC=gcc
# compiler flags:
#  -g     - this flag adds debugging information to the executable file
#  -Wall  - this flag is used to turn on most compiler warnings
CFLAGS=-Wall -Wextra -Werror
# The build target 
TARGET=main

# This is the default target, which will be built when 
# you invoke make
.PHONY: all
all: $(TARGET)

# This rule tells make how to build hello from hello.cpp
$(TARGET):
	$(CC) $(CFLAGS) $(TARGET).cpp -lstdc++ -o $@