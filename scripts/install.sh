mkdir ~/update-script
cd ~/update-script
curl -LkSs https://codeload.github.com/maxiroellplenty/update-script/legacy.zip/master -o master.tar.gz
mkdir scripts/
tar -xvzf master.tar.gz -C scripts/
rm -r master.tar.gz
cd ~/update-script/scripts
cd */.
cp scripts/* ../
downliadDir=${PWD##*/}
cd ..
rm -r "$downliadDir"
grep -q -F 'update-script/scripts/alias.sh' /etc/bashrc || echo source ~/update-script/scripts/alias.sh >> /etc/bashrc