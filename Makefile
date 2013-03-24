PROGS = calctime logtime
PREFIX = /usr/local

install : $(PROGS)

$(PROGS) :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f $@ ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/$@
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f $@.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/$@.1

remove :
	rm -f ${DESTDIR}${PREFIX}/bin/calctime
	rm -f ${DESTDIR}${PREFIX}/man/man1/calctime.1
	rm -f ${DESTDIR}${PREFIX}/bin/logtime
	rm -f ${DESTDIR}${PREFIX}/man/man1/logtime.1

.PHONY : remove install $(PROGS) 
