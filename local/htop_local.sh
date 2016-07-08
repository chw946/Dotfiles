mkdir -p ~/tmp
cd ~/tmp
curl -L -O https://hisham.hm/htop/releases/2.0.1/htop-2.0.1.tar.gz
tar xzvf htop-2.0.1.tar.gz
cd ~/tmp/htop-2.0.1
./configure --prefix=$HOME
make
make install
mv ~/tmp/htop-2.0.1/htop ~/bin/
rm -rf ~/tmp/htop*
