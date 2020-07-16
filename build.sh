#!/bin/bash
 
ARCH=arm \
CC=arm-linux-gnueabi-gcc ./configure \
CHECK_CFLAGS="-I${CHECK_OUT_PATH}/include/" \
CHECK_LIBS="-L${CHECK_OUT_PATH}/lib/ -lcheck" \
GLIB_CFLAGS="-I${GLIB_OUT_PATH}/include/glib-2.0 -I${GLIB_OUT_PATH}/lib/glib-2.0/include" \
GLIB_LIBS="-L${GLIB_OUT_PATH}/lib -lglib-2.0" \
GMODULE_CFLAGS="-I${GLIB_OUT_PATH}/include/glib-2.0 -I${GLIB_OUT_PATH}/lib/glib-2.0/include" \
GMODULE_LIBS="-L${GLIB_OUT_PATH}/lib/glib-2.0 -lgmodule-2.0" \
--host=arm-linux-gnueabi \
--prefix=$MC_OUT_PATH \
--enable-static=yes \
--with-screen=ncurses \
--with-ncurses-includes="${NCURSES_OUT_PATH}/include" \
--with-ncurses-libs="${NCURSES_OUT_PATH}/lib"
make
