#!/bin/bash

rm -rf *.o  *.m4  *.a *.la *.log
rm -rf NEWS README AUTHORS ChangeLog INSTALL install-sh  COPYING depcomp stamp-h1
rm -rf autom4te.cache m4
rm -rf missing  ltmain.sh  
rm -rf libtool

rm -rf `ls config*|egrep -v configure.ac`
rm -rf `ls Makefile*|egrep -v Makefile.am`

rm -rf *~

