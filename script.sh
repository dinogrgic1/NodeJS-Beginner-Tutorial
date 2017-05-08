#!/bin/sh
USERNAME=""		#	inesrt github/bitbucket username
EMAIL=""			#	insert github/bitbucket email
REPO=""	#	insert repository to be cloned
SERVER="app.js"	#	node.js server entry point

echo -ne '0/7 |      |\r';
git pull > /dev/null;
#git clone $REPO
echo -ne '1/6 |#     |\r';
git config --global user.name $USERNAME;
echo -ne '2/6 |##    |\r';
git config --global user.email $EMAIL;
echo -ne '3/6 |###   |\r';
npm install;
echo -ne '4/6 |####  |\r';
pwd=$(pwd);
cd /c/xampp;
./xampp-control &
echo -ne '5/6 |##### |\r';
cd $pwd;
nodemon $SERVER;
echo -ne '6/6 |######|\r';
echo -ne '\n';

