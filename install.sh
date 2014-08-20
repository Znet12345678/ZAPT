
#!/bin/bash
if [[ $1 == "install" ]];then
	cp -rv scripts /
        chmod -R 777 /scripts
        cp -v zapt /usr/local/bin
        cp -v yourbestbuilder /usr/local/bin
elif [[ $1 == "install-scripts" ]];then
	cp -rv scripts /
	chmod -R 777 /scripts
elif [[ $1 == "install-core" ]];then 
	cp -v zapt /usr/local/bin
	cp -v yourbestbuilder /usr/local/bin
else
	echo "Usage ./install.sh [install],[install-scripts],[install-core]";
fi
