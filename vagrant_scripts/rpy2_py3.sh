apt-get -y install mercurial
cd /tmp
hg clone https://www.bitbucket.org/lgautier/rpy2
cd rpy2
hg update version_2.4.x
python3 setup.py install
