#!/bin/bash
cd /vagrant/lustre/source/lustre-$LUSTRE_VERSION/debian
echo Y | ./prepare.sh /vagrant/lustre/debs/linux-image-*
cd /vagrant/lustre/source/lustre-$LUSTRE_VERSION
dpkg-buildpackage -rfakeroot -uc -us
mv /vagrant/lustre/source/*.deb /vagrant/lustre/debs/
rm -rf  /var/lib/dkms/$LUSTREVER-client-modules
dh_clean
make clean
echo building dkms packages
rsync -a /vagrant/lustre/source/lustre-$LUSTRE_VERSION/*  /usr/src/lustre-client-modules-$LUSTRE_VERSION-1.0.0
dkms add -m lustre-client-modules-$LUSTRE_VERSION  -v 1.0.0 --all
dkms mkdeb  -m lustre-client-modules-$LUSTRE_VERSION  -v 1.0.0 --source-only
mv  /var/lib/dkms/lustre-client-modules-$LUSTRE_VERSION/1.0.0/deb/*.deb /vagrant/lustre/debs
