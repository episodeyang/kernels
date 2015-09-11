wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.3.0-Linux-x86_64.sh
bash Anaconda-2.3.0-Linux-x86_64.sh -b
echo 'export PATH="/home/ec2-user/anaconda/bin:$PATH"' >> ~/.bashrc 

conda install jupyter ipython ipython-notebook
conda update jupyter

