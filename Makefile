CFLAGS = -Wall -Wextra -pedantic -std=c99
CFLAGS += `pkgconf --cflags sdl2`
LDLIBS  = `pkgconf --libs sdl2`

SRC=k

.PHONY: show-tags
show-tags: tags
	@echo -e \n\# LIBS\n
	@ctags --c-kinds=+l -L headers.txt --sort=no -x
	@echo  -e \n\# $(SRC)\n
	@ctags --c-kinds=+l                --sort=no -x $(SRC).c

.PHONY: tags
tags: $(SRC).c parse-headers.exe
	@$(CC) $(CFLAGS) $< -M > headers-M.txt
	@./parse-headers.exe M
	@ctags --c-kinds=+l -L headers.txt
.PHONY: lib-tags
lib-tags: $(SRC).c parse-headers.exe
	@$(CC) $(CFLAGS) $< -M > headers-M.txt
	@./parse-headers.exe
	@ctags -f lib-tags --c-kinds=+p -L headers.txt

parse-headers.exe: parse-headers.c
	$(CC) -Wall $< -o $@

