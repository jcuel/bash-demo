#!/bin/bash
#some colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0,' #no color
# Ask the name
echo Please input your name
read -p 'Name: ' uservar
echo plese input your url
read -p 'Url: ' urlvar
echo
echo "${GREEN}Thankyou $uservar, your website $urlvar will load shortly...${NC}"
echo "${YELLOW}----LOADING WEBSITE---${NC}"
website=$(wget -qO- $urlvar | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si')
echo "${RED}Your website is: $website ${NC}"
echo "${GREEN}--- THE END ---${NC}"