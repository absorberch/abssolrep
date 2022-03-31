cd $HOME/node/shibuya
echo "Введите ссылку на нужную версию"
read link
wget -O lastupdate_shiba.tar.gz $link
sleep 3
systemctl stop shibuya
rm astar-collator
tar -xf lastupdate_shiba.tar.gz
sleep 4
chmod +x astar-collator
systemctl start shibuya
rm -r lastupdate_shiba.tar.gz
echo "Все ок, обновили"
