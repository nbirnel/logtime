PROG = calctime
PREFIX = /usr/local

install :: ${PROG} ${PROG}.1
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ${PROG} ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/${PROG}
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f ${PROG}.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/${PROG}.1

pdf :: ${PROG}.1
	man -t ./${PROG}.1 > ${PROG}.ps
	ps2pdf ${PROG}.ps

print-pdf :: ${PROG}.pdf
	cygstart -p ${PROG}.pdf

clean ::
	rm -r ${PROG}.ps

remove ::
	rm -f ${DESTDIR}${PREFIX}/bin/${PROG}
	rm -f ${DESTDIR}${PREFIX}/man/man1/${PROG}.1
