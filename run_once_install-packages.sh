#!/usr/bin/env bash

sudo pacman -S rust-analyzer nodejs npm python-pip

npm -g install remark
npm -g install remark-cli
npm -g install remark-stringify
npm -g install remark-frontmatter
npm -g install wcwidth
npm install --global prettier
npm install -g pyright

pip3 install --user pylint yapf autoflake isort coverage 

curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim