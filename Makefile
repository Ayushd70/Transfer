#
# SPDX-License-Identifier: GPL-3.0-or-later
#
# Copyright (C) 2018, Harshit Jain
#

# Issue 1 file size
CFLAGS="-DGET_FILE_SIZE"

default: transfer

transfer.o: transfer.c
	gcc $(CFLAGS) -c transfer.c -o transfer.o

transfer: transfer.o
	gcc $(CFLAGS) transfer.o -o transfer
	-rm -f transfer.o

clean:
	-rm -f transfer.o
	-rm -f transfer

install:
	mv transfer /usr/bin/
	echo "Now you can use transfer binary with command line"
	echo "Example"
	echo "transfer myfile.txt"
