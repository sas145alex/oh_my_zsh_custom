# This file contain my custom aliases
#
# If you use oh-my-zsh i recommend put this file into $ZSH_CUSTOM directory
#
# Example:
# alias vi='vim'

alias zshreload="source ~/.zshrc"

# docker
alias containerclean="docker ps -a -q | xargs docker rm"
alias imageclean="docker images --filter dangling=true -q | xargs docker rmi"
alias dc="docker-compose"
alias dcps="docker-compose ps"
alias dce="docker-compose exec"
alias dcew="docker-compose exec web"
alias dcr="docker-compose run --rm"
alias dcup="docker-compose up"
alias dcupq="docker-compose up -d"
alias dcs="docker-compose stop"
alias dcd="docker-compose down"

# zsh
alias theme="echo $ZSH_THEME"
alias zsh_theme="echo $ZSH_THEME"

# system dependent aliases
case "$(uname -s)" in
  "Linux")
    alias here="nautilus . >/dev/null 2>&1 &; disown"
    alias ls="ls -Gp --color=auto"
    ;;
  "Darwin")
    alias here="open ."
    alias ls="ls -Gp"
    ;;
  *)
    echo "Unknown system. Please check aliases initialization under path:"
    echo "$0"
    ;;
esac
