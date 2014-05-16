# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
# echo 'deb http://cran.r-project.org/bin/linux/ubuntu precise/' > /etc/apt/sources.list.d/r.list

# apt-get update

apt-get install -y r-recommended 
apt-get install -y gdebi-core libapparmor1
RSTUDIO_VER="0.98.507"
wget http://download2.rstudio.org/rstudio-server-$RSTUDIO_VER-amd64.deb
gdebi -n rstudio-server-$RSTUDIO_VER-amd64.deb
rm rstudio-server-$RSTUDIO_VER-amd64.deb
