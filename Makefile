PREFIX = /usr/local

install :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f logtime ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/logtime
	cp -f calctime ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/calctime
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f logtime.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/logtime.1
	cp -f calctime.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/calctime.1

uninstall :
	rm -f ${DESTDIR}${PREFIX}/bin/calctime
	rm -f ${DESTDIR}${PREFIX}/man/man1/calctime.1
	rm -f ${DESTDIR}${PREFIX}/bin/logtime
	rm -f ${DESTDIR}${PREFIX}/man/man1/logtime.1

push :
	git push origin master

pull :
	git pull origin master

.PHONY : install uninstall push pull 
