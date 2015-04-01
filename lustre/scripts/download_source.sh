#!/bin/sh
mkdir -p /vagrant/lustre/downloads
cd  /vagrant/lustre/downloads
if [ "`md5sum  lustre-2.5.29.ddnpf3-2.6.32_431.29.2.el6_lustre.2.5.29.ddnpf3.x86_64_g6a6b29c.src.rpm |  awk '{print $1}' `" != "2d850929f261df29e96a220a01e333e9" ] ; then
   rm -f  lustre-2.5.29.ddnpf3-2.6.32_431.29.2.el6_lustre.2.5.29.ddnpf3.x86_64_g6a6b29c.src.rpm 
   wget  wget https://woscloud.corp.ddn.com/v2/files/ZmY4YzE2YjlkZWI0ZDFmZjk0ZTExNmQzZDg0ZmUxYzlk/content/inline/lustre-2.5.29.ddnpf3-2.6.32_431.29.2.el6_lustre.2.5.29.ddnpf3.x86_64_g6a6b29c.src.rpm 
fi
#wget ftp://ftp.redhat.com/pub/redhat/linux/enterprise/6Server/en/os/SRPMS/kernel-2.6.32-431.17.1.el6.src.rpm
if [  "`md5sum linux-2.6.32-431.17.1.el6.x86_64.tar.gz |  awk '{print $1}' `" != "8ec9076424ef8a390f22d3532537755c" ] ; then
  rm -f linux-2.6.32-431.17.1.el6.x86_64.tar.gz
  wget ftp://ftp.sanger.ac.uk/pub/users/jb23/linux-2.6.32-431.17.1.el6.x86_64.tar.gz
fi
if [  "`md5sum MLNX_OFED_LINUX-2.1-1.0.6-ubuntu12.04-x86_64.tgz |  awk '{print $1}'`" != "f590709dd4e9a31dd05251bcb66241cc"  ] ; then
  rm -f  MLNX_OFED_LINUX-2.1-1.0.6-ubuntu12.04-x86_64.tgz
  wget http://www.mellanox.com/downloads/ofed/MLNX_OFED-2.1-1.0.6/MLNX_OFED_LINUX-2.1-1.0.6-ubuntu12.04-x86_64.tgz
fi
	
