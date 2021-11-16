#!/usr/bin/env bash

# sudo pacman -S rust-analyzer nodejs npm python-pip
# sudo pacman -S postgresql fish

# pamac install direnv
yay -S rust-analyzer nodejs npm python-pip fish-done

npm -g install remark
npm -g install remark-cli
npm -g install remark-stringify
npm -g install remark-frontmatter
npm -g install wcwidth
npm install --global prettier
npm install -g pyright
npm install -g robbyrussell
npm install -g chalk

pip3 install -U --user pip pylint yapf autoflake isort coverage pip-tools

# curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
# omf update
curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim
##
# printf "function gi\n\tcurl -sL https://www.toptal.com/developers/gitignore/api/\$argv\nend\n" > \
# ~/.config/fish/functions/gi.fish
