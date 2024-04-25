#!/bin/bash

# Substitua o arquivo sources.list
sudo cp /tmp/apt-cache/sources.list /etc/apt/sources.list

# Limpeza
rm -rf /tmp/apt-cache

echo "Arquivo sources.list atualizado com sucesso!"
