#!/usr/bin/env bash

mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
printf "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile

npm install -g pyright