#!/bin/bash  

# this bash script reads the newest posts on the r/buildapcsales subreddit

# this build is optimized for WSL Ubuntu 18.04 LTS
# if you are running a native linux machine, just replace the chrome path in line 25 with the path to your web browser

# HTML and XML manipulation utilities are required as well as lynx
# run these commands if these packages are not already installed
# sudo apt-get install html-xml-utils 
# sudo apt-get install lynx
# sudo apt-get update


echo "https://www.reddit.com/r/buildapcsales/new/" |
   wget -O- -i- | 
   hxnormalize -x | 
   hxselect -i "h3._eYtD2XCVieq6emjKBH3m" |  
   lynx -stdin -dump > result

cat result
rm -rf result

echo -e "\n"
read -p "go to r/buildapcsales? [Y/N] " yn
case $yn in
   [Yy]* ) "/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe" https://www.reddit.com/r/buildapcsales/new/;;
   [Nn]* ) exit;;
   * ) echo "Please answer yes or no.";;
esac

