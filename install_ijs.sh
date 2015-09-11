sudo yum install libzmq-dev python-dev python-pip g++ curl
curl -sL https://deb.nodesource.com/setup | sudo bash -

# install nodejs from enterprise distribution
## run as root.
curl --silent --location https://rpm.nodesource.com/setup | sudo bash -
sudo yum install -y nodejs
sudo yum install gcc-c++ make

sudo pip install --upgrade ipython jinja2 tornado jsonschema pyzmq
conda install -y pyzmq

# now before you can use it, you need to upgrade the npm since CentOS's npm EPEL is not up to date.
# install epel
rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm

# install stuff to build
yum install -y git svn cpp make autoconf automake patch cmake wget mlocate rpm-build gcc-c++ uuid-devel pkgconfig libtool python-devel openpgm

# install zeromq..
wget http://download.zeromq.org/zeromq-4.0.5.tar.gz
tar xzvf zeromq-4.0.5.tar.gz
cd zeromq-4.0.5
./configure
make
sudo make install
cd ..
sudo rm -rf zeromq-4.0.5.tar.gz

sudo npm install --upgrade npm n -g
sudo yum install nodejs-legacy npm ipython ipython-notebook libzmq-dev
sudo npm install -g ijavascript
sudo npm install -g ijs
sudo chown ec2-user -R /usr/lib/node_modules/

# now to activate node.js you can just run ijs in the command line
ijs
