set -e

yum install wget -y

TA_LIB_TGZ="ta-lib-0.4.0-src.tar.gz"
TA_LIB_URL="http://prdownloads.sourceforge.net/ta-lib/$TA_LIB_TGZ"

wget -O "/tmp/$TA_LIB_TGZ" $TA_LIB_URL
pushd /tmp
tar -zxvf $TA_LIB_TGZ
popd
pushd /tmp/ta-lib
./configure
make install
popd