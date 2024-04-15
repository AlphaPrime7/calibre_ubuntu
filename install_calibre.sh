#install deps 
sudo apt install libxcb-cursor0

#download and install calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
#sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin install_dir=/opt

#unsecure installation
sudo -v && wget --no-check-certificate -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

#isolated install-next time is what i will use
wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin install_dir=~/calibre-bin isolated=y

#manual installation
sudo mkdir -p /opt/calibre && sudo rm -rf /opt/calibre/* && sudo tar xvf /path/to/downloaded/calibre-tarball.txz -C /opt/calibre && sudo /opt/calibre/calibre_postinstall

#version reversion
sudo -v && sudo calibre-uninstall && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin version=4.23.0

#source install-should have python3
curl -L https://calibre-ebook.com/dist/src | tar xvJ
cd calibre* && sudo python3 setup.py install
