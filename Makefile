src=$(wildcard ./*.c)
obj=$(patsubst ./%.c, ./%.o, $(src))

target=Hello
CC=gcc

$(target):$(obj)
	$(CC) $^ -o $@


%.o:%.c
	$(CC) -c $< -o $@


.PHONY:clean
clean:
	rm -f $(obj) $(target)
