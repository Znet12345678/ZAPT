all:
	
install:
	cp -r scripts /
	chmod -R 777 /scripts
	cp zapt /usr/local/bin
install-main:
	cp -r zapt /usr/local/bin	
install-scripts:
	cp -r scripts /
	chmod -R 777 /scripts
uninstall:
	rm -r /scripts
	rm /usr/local/bin/zapt

