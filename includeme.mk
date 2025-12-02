GCC ?= gcc

# $(info gcc value is : $(GCC))

SRC = $(shell find -iname "*.c")
OBJ_FILES = $(patsubst %.c,  %.o ,$(SRC))
INCLUDE = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

define some_macro
	echo "Hello World"
	echo "Hello World" $@
endef