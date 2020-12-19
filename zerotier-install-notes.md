sudo su

eopkg install systemd-devel llvm-clang -y

mkdir /opt && cd /opt 

git clone https://github.com/zerotier/ZeroTierOne.git

cd ZeroTierOne

make && make selftest && make install

wget https://raw.githubusercontent.com/bvdlingen/solus-linux-scripts/master/zerotier.service -O /etc/systemd/system/zerotier.service

systemctl enable zerotier && systemctl start zerotier && systemctl status zerotier
