sudo pacman -S zsh
sudo chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL 
https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
sudo pip install powerline-status
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
sudo pacman -Syu
sudo pacman -S apache
sudo systemctl start httpd.service
sudo pacman -S php php-apache
#Configurar o apache https://medium.com/matheus-rossi/configurando-um-servidor-lamp-no-manjaro-linux-arch-based-41e285d820da
sudo pacman -S mariadb
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld.service
sudo systemctl enable mysqld.service
