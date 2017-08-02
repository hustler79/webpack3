#!/bin/bash

VER="v0.0.1"

DIR=react;

if [ -e $DIR ]; then  # not exist (fnode, directory, socket, etc.)
    echo "";
    printf "\e[91m    directory '$DIR' already exist\e[0m";
    echo "";
    echo "";
    exit 1
fi

GETFILE="$(wget -help 1> /dev/null 2> /dev/null && echo "wget" || echo "curl -LOk")";

GETOUTPUT="$(wget -help 1> /dev/null 2> /dev/null && echo "wget -qO-" || echo "curl -s")"

T="$(date +%Y-%m-%d-%H-%M-%S)"

# if react exist stop

mkdir -p react/webpack

echo "";

while read p; do

    EXE="wget https://raw.githubusercontent.com/stopsopa/webpack3/$VER/$p?$T -O $p 1> /dev/null 2> /dev/null"

    $EXE 1> /dev/null 2> /dev/null

    printf "downloading $p - ";

    if [ -f "$p" ]; then printf "success"; else printf "failure"; fi

    echo "";

done << EOF
    $($GETOUTPUT https://raw.githubusercontent.com/stopsopa/webpack3/$VER/install/files.list?$T)
EOF

# test file

STATUS=0;

echo "";

if [ "$(cat __check.js)" == "__check.js" ]; then
    printf "\e[92m    download successful\e[0m";
    rm -rf __check.js
else
    printf "\e[91m    download failed - files malformed\e[0m";
    STATUS=1;
fi

cd react

echo "";
echo "";

yarn -v 2> /dev/null 1> /dev/null

if [ "$?" == "0" ]; then # yarn
    yarn install
else # npm

    npm -v 2> /dev/null 1> /dev/null

    if [ "$?" == "0" ]; then # yarn

        npm install
    else # npm
        printf "\e[91m'npm' not available, usually that's means that you need to install node.js\e[0m";
    fi
fi

echo "";
echo "";
echo "now run:";
echo "    cd react";
echo "";
echo "and next one of:";
echo "    npm run dev";
echo "  or";
echo "    npm run prod";
echo "";

exit $STATUS;


