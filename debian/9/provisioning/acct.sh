#!/bin/sh

mkdir ~devel/.ssh
cat <<EOF > ~devel/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEArlAzSLt69/Ts+10k8AaMPTyjXDX6TgePtk2weQykSO4cvR/ufBKiWENq3wUflIqbGfgNkuVeux8XKe4ko7pAGToH44CkEaf3p9+oSsqEp/H1vu3q8VSJutBK0OTmIJzgxXWrM15esbJl6ew0h7VIgT//8Grjqn0MFUK5/rNEYj8+yI3yUbn5y0doFjYwy0J6EwIHwCvumtxQV76jHc7DAeKE1GQCsBDtFRDypdkWMVArkEYRv7dNDbHsBiMGBqj/2LrAX9/eroQ5sp3kdVEIl4HRgbOXrRA7Odeh+UAQwctxGowJXreqX+ZxIapwOoF8RulUAjThH/VRAOfLUcSvYw== Shared CVC public key
EOF
cat <<EOF > ~devel/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEArlAzSLt69/Ts+10k8AaMPTyjXDX6TgePtk2weQykSO4cvR/u
fBKiWENq3wUflIqbGfgNkuVeux8XKe4ko7pAGToH44CkEaf3p9+oSsqEp/H1vu3q
8VSJutBK0OTmIJzgxXWrM15esbJl6ew0h7VIgT//8Grjqn0MFUK5/rNEYj8+yI3y
Ubn5y0doFjYwy0J6EwIHwCvumtxQV76jHc7DAeKE1GQCsBDtFRDypdkWMVArkEYR
v7dNDbHsBiMGBqj/2LrAX9/eroQ5sp3kdVEIl4HRgbOXrRA7Odeh+UAQwctxGowJ
XreqX+ZxIapwOoF8RulUAjThH/VRAOfLUcSvYwIBJQKCAQB6fYvSPo3C/yMRf7kX
XowPWwsChsuQxwsKe8gdtds6KsgWMh00l3j/wKv2qad9IyDh0ObxmkKRVB4ddulQ
dQpyl3sqPrh7HBXP6UXTsOeYnDAlTT1PozBZwszKJE6vIiFoKSwx70l18vuByJOd
ofuZGDdO/wDYquXlbSjA0P+e+tm3Atlml23vl1NZ1IUDl+/qgRNccsvGC2JxkQWj
jnIT9Vmj1RTJUrwEKxhHCuLBlTjQIZ8S7PWZ5WiBATnAYSJFgpq/dV/JW9qhv+uv
F2zCvjzIOavkPL8xGjozKL1toqX0ou6OHi21cyz/VKu0AJ37iERSvybKlf0tjBfm
Ad89AoGBANSM9/LPkF/aAfNpm+OFxN+s9Hrwsx23MllW1qny9GTvk7HRAgN+2/4p
zvZcaGrFyR27q+ZCi+teVwt5MLwxm4REW2/LGCGrnoGnzgzIoFfYac5cSvvzDLzp
TZyX2BvK1cO6dr9TXpGr5cEf67TKbEUaVgv0nOs0bZYSoPBx4Ut9AoGBANHyOVP6
A1YcUJHAdbdd6k7TaY7L6SUOwSX81Kw4QOMdSkmaPJywPzIgZx6pQ6POMrMikbVs
FT9AqBqaSSjg0gXir0z6eVI89rIkoS+prOS9ptQIeP+6IzMoM3d7EHE9ZtTmaIBo
fOtZK42CsowDni732zWX1rTe7Vx8OpF7CBxfAoGAC3091cYHzdRuzuMdLuSi26h7
6vhBCIZxbJzpAkR76cfCy1dn5INl1mMf8aQhUeEtdzqTq5Tk9/dC+bOGGAKuddou
dL7etbY/61Utu4B3XrHAh7H2NyHlA0rhmcMEwztlgDOXt1CdU/t0M/PjOjR0jh0Z
aG4WUecohKcPnktYSUUCgYEAiC5qX/wd1v2cC4PB+mZueFHH7ewM2cRhnBmetOY3
7UNudO5sgU+6SgcuIbnmr3D+Sq6js/MUs2g1sGQTx30SnAipD1ZciF7lNUgxM6xU
eLJeYAV+6xD0PNvOW1a+jqReYJV0N5240AJ9HYU1i0Cd9PPMdcpGFHTs/bhdV3Jm
ID0CgYEApzvmH01hJcpynEp0w6KvBm3SemikdwjyGSUntg9g6+HS6veHNtKlA3rA
k0Td0R/Pj5q01h/IYOylW5k1Q0fWM0oBVzwZ1GpNSVsYWlWJ5BjmyDSlwQl1/I76
XZSB2T91dO6XtOTrmag1F8JzfMybgHBq6bqYWLEhIrzJo6pHgnU=
-----END RSA PRIVATE KEY-----
EOF
chown -R devel:devel ~devel/.ssh
chmod 700 ~devel/.ssh
chmod 600 ~devel/.ssh/authorized_keys
chmod 600 ~devel/.ssh/id_rsa
mkdir /root/.ssh
cp ~devel/.ssh/authorized_keys /root/.ssh
cp ~devel/.ssh/id_rsa /root/.ssh
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys
chmod 600 /root/.ssh/id_rsa
chown -R root:root /root/.ssh

# use local mirror
mv /etc/apt/sources.list /etc/apt/sources.list.default
cat <<EOF > /etc/apt/sources.list
deb http://mirror.sjtu.edu.cn/debian/ stretch main contrib non-free
deb-src http://mirror.sjtu.edu.cn/debian/ stretch main contrib non-free
deb http://mirror.sjtu.edu.cn/debian/ stretch-updates main contrib non-free
deb-src http://mirror.sjtu.edu.cn/debian/ stretch-updates main contrib non-free
deb http://mirror.sjtu.edu.cn/debian/ stretch-backports main contrib non-free
deb-src http://mirror.sjtu.edu.cn/debian/ stretch-backports main contrib non-free
deb http://mirror.sjtu.edu.cn/debian-security/ stretch/updates main contrib non-free
deb-src http://mirror.sjtu.edu.cn/debian-security/ stretch/updates main contrib non-free
EOF

cat <<EOF > /etc/apt/sources.list.d/buster.list
deb http://mirror.sjtu.edu.cn/debian/ buster main contrib non-free
EOF

cat <<EOF > /etc/apt/apt.conf.d/default-release
APT::Default-Release "stretch";
EOF

apt-get update
