#!/bin/bash
VERMILION='\033[0;31m'
WHITE='\033[0;37m'
GREEN='\033[0;32m'

echo -e "${VERMILION}Installing ..."
cp -r src stegbrutex.sh /usr/local/bin/
ln -sf /usr/local/bin/stegbrutex.sh /usr/local/bin/stegbrutex
chmod +x /usr/local/bin/stegbrutex.sh
chmod +x /usr/local/bin/src/main.py
sleep 1
echo -e "${WHITE}Congratulations installation complete ..."
echo -e "${GREEN}Run this tool with stegbrutex command. Happy cracking"
