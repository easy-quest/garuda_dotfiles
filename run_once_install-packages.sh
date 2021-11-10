#!/usr/bin/env bash

sudo pacman -S rust-analyzer nodejs npm 

npm -g install remark
npm -g install remark-cli
npm -g install remark-stringify
npm -g install remark-frontmatter
npm -g install wcwidth
npm install --global prettier