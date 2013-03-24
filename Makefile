PROGS = calctime logtime
PREFIX = /usr/local

install : install-calctime install-logtime

install-calctime :: calctime calctime.1
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f calctime ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/calctime
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f calctime.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/calctime.1

install-logtime :: logtime logtime.1
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f logtime ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/logtime
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f logtime.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/logtime.1

remove ::
	rm -f ${DESTDIR}${PREFIX}/bin/calctime
	rm -f ${DESTDIR}${PREFIX}/man/man1/calctime.1
	rm -f ${DESTDIR}${PREFIX}/bin/logtime
	rm -f ${DESTDIR}${PREFIX}/man/man1/logtime.1
