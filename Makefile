include includeme.mk


# $(info $(SRC) $(OBJ_FILES) $(INCLUDE))

all: main
	@

run : all
	@./main

main: $(OBJ_FILES)
	$(GCC) $^ -o $@
	$(some_macro)

%.o: %.c
	$(GCC) $(INCLUDE) -c $^ -o $@
	$(some_macro)


clean:
	@rm -f main $(OBJ_FILES)
