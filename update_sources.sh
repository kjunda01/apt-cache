#!/bin/bash

# Defina os novos dados do sources.list
new_sources="
deb http://apt-cache/archive.ubuntu.com/ubuntu jammy main universe multiverse
deb http://apt-cache/archive.ubuntu.com/ubuntu jammy-updates main universe multiverse
deb http://apt-cache/security.ubuntu.com/ubuntu jammy-security main universe multiverse
"

# Salve os novos dados em um arquivo temporário
echo "$new_sources" > /tmp/new_sources.list

# Substitua o arquivo sources.list
sudo cp /tmp/new_sources.list /etc/apt/sources.list

# Limpeza
rm /tmp/new_sources.list

echo "Arquivo sources.list atualizado com sucesso!"
