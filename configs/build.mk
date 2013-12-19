# GHC Build config, place in $GHC_HEAD_CHECKOUT/mk and configure with:
# $ tools=<rpi build tools checkout>
# $ export PATH=$PATH:$tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin
# $ ./configure --target=arm-linux-gnueabihf --prefix=$INSTALL_PREFIX --with-gcc=arm-linux-gnueabihf-gcc

# copy these files from the raspberry to $RPI_ROOT
# $RPI_ROOT
# $RPI_ROOT/lib
# $RPI_ROOT/lib/libcurses.a
# $RPI_ROOT/lib/libncurses.a
# $RPI_ROOT/lib/libcurses.so
# $RPI_ROOT/lib/libtinfo.a
# $RPI_ROOT/lib/libtinfo.so.5.9
# $RPI_ROOT/include
# $RPI_ROOT/include/curses.h
# $RPI_ROOT/include/cursesw.h
# $RPI_ROOT/include/unctrl.h
# $RPI_ROOT/include/ncurses.h
# $RPI_ROOT/include/term.h
# $RPI_ROOT/include/cursesapp.h
# $RPI_ROOT/include/cursesm.h
# $RPI_ROOT/include/cursesf.h
# $RPI_ROOT/include/cursesp.h
# $RPI_ROOT/include/ncurses_dll.h

EXTRA_INCLUDE=${RPI_ROOT}/include
EXTRA_LIB=${RPI_ROOT}/lib

INTEGER_LIBRARY = integer-simple
Stage1Only = YES
SRC_HC_OPTS += -"I${EXTRA_INCLUDE} -L${EXTRA_LIB}"
libraries/terminfo_CONFIGURE_OPTS += --configure-option=--with-curses-includes=${EXTRA_INCLUDE} --configure-option=--with-curses-libraries=${EXTRA_LIB}
HADDOCK_DOCS       = NO
BUILD_DOCBOOK_HTML = NO
BUILD_DOCBOOK_PS   = NO
BUILD_DOCBOOK_PDF  = NO
