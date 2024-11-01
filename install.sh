#!/bin/bash
#!/bin/bash
sleep 1
VERMILION='\033[0;31m'
if [[ $(id -u) -ne 0 ]] ; then 
echo -e "${VERMILION}You are Not Root! Please Run as Root."
echo -e "${VERMILION}Installation failed ..." ; exit 1 ; 
fi
VERMILION='\033[0;31m'
WHITE='\033[0;37m'
GREEN='\033[0;32m'

echo -e "${VERMILION}Installing ..."
cp -r src stegbrutex.sh /usr/local/bin/
ln -sf /usr/local/bin/stegbrutex.sh /usr/local/bin/stegbrutex
chmod 777 /usr/local/bin/stegbrutex.sh
chmod 777 /usr/local/bin/src
chmod 777 /usr/local/bin/src/main.py
sleep 1
echo -e "${WHITE}Congratulations installation complete ..."
echo -e "${GREEN}Run this tool with stegbrutex command. Happy cracking"
