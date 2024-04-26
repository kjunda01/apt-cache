#!/bin/bash

# Defina os novos dados do sources.list
new_sources="
deb http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy main restricted
deb-src http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy main restricted
deb http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-updates main restricted
deb-src http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-updates main restricted
deb http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy universe
deb-src http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy universe
deb http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-updates universe
deb-src http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-updates universe
deb http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy multiverse
deb-src http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy multiverse
deb http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-updates multiverse
deb-src http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-updates multiverse
deb http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
deb-src http://192.168.1.199:3142/archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
deb http://192.168.1.199:3142/security.ubuntu.com/ubuntu jammy-security main restricted
deb-src http://192.168.1.199:3142/security.ubuntu.com/ubuntu jammy-security main restricted
deb http://192.168.1.199:3142/security.ubuntu.com/ubuntu jammy-security universe
deb-src http://192.168.1.199:3142/security.ubuntu.com/ubuntu jammy-security universe
deb http://192.168.1.199:3142/security.ubuntu.com/ubuntu jammy-security multiverse
deb-src http://192.168.1.199:3142/security.ubuntu.com/ubuntu jammy-security multiverse
"

# Salve os novos dados em um arquivo temporário
echo "$new_sources" > /tmp/new_sources.list

# Substitua o arquivo sources.list
sudo cp /tmp/new_sources.list /etc/apt/sources.list

# Limpeza
rm /tmp/new_sources.list

echo "Arquivo sources.list atualizado com sucesso!"
