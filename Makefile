all: webproxy

webproxy: webproxy.c
	sudo gcc -w webproxy.c -o webproxy

clean:
	rm webproxy
