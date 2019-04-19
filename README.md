# oh_my_zsh_custom
My personal custom settings to oh-my-zsh

## Install

### oh-my-zsh
```bash
cd $ZSH
mv custom custom.backup
git clone https://github.com/sas145alex/oh_my_zsh_custom.git custom
# OR
git clone git@github.com:sas145alex/oh_my_zsh_custom.git custom

# Optional
rm -rf custom.backup
```

### init submodules
```bash
cd custom/plugins
git submodule init
git submodule update
```

### change theme to `custom-agnoster`
```bash
nano ~/.zshrc
source ~/.zshrc
```

### Recommended plugins (Optional)
```bash
plugins=(
  # standart plugins
  git
  gem
  docker
  colored-man-pages

  # custom plugins
  zsh-syntax-highlighting
  zsh-autosuggestions
)
```

## Install powerline fonts
```bash
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```
