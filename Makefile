### 
## Makefile skeleton
## INFO0030: Projet 1
## 
### 

## Variables

# Tools & flags
CC=gcc
CFLAGS=--std=c99 --pedantic -Wall -W -Wmissing-prototypes
AR=ar
RANLIB=ranlib

# Files

## Rules

all: libpnm.a

libpnm.a: pnm.o
	@echo "[+] Archiving libpnm.a"
	$(AR) rsv $@ $?
	$(RANLIB) $@

%.o: %.c
	@echo "[+] Building objects file for libpnm"
	$(CC) $(CFLAGS) -c $<


clean:
	rm -rf *.o
	rm -rf *.a

