.PHONY: clean
LDFLAGS = -static -lpcap -lnet -lpthread
CFLAGS = -Wall

tcpkill: pcaputil.o tcpkill.c
	${CC} ${CFLAGS} -o $@ $^ ${LDFLAGS}

clean:
	rm -f pcaputil.o tcpkill
