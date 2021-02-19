sudo su
eopkg install systemd-devel llvm-clang -y

cd /opt 
mv ZeroTierOne ZeroTierOne.old

git clone https://github.com/zerotier/ZeroTierOne.git
cd ZeroTierOne
make && make selftest && make install

systemctl start zerotier && systemctl status zerotier

#cleanup
cd /opt
rm -rf ZeroTierOne.old
