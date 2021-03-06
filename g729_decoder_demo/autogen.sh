echo libtoolize
if [ `(uname -s) 2>/dev/null` == 'Darwin' ]
then
	glibtoolize --copy --force
else
	libtoolize --copy --force
fi


echo  copy static library to here
if [ -f ../g729_lib/libg729b.a  ]
then
	cp ../g729_lib/libg729b.a  ./
fi


echo "aclocal"
aclocal

echo "autoheader"
autoheader

echo "create NEWS, README, AUTHORS and ChangeLog"
touch NEWS README AUTHORS ChangeLog

echo "autoreconf"
autoreconf -i

echo "automake"
automake -a
