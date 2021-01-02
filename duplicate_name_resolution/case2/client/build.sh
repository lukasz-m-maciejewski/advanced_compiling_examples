#!/usr/bin/env bash

gcc -Wall -g -O0 -I ../libfirst/ -I ../libsecond/ -c main.c
gcc main.o \
    -Wl,-L../libsecond/ -Wl,-lsecond \
    -Wl,-L../libfirst/ -Wl,-lfirst \
    -Wl,-R../libfirst/ \
    -Wl,-R../libsecond/ \
    -o client_app
