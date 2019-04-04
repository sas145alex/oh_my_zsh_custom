# This file contain my custom aliases
#
# If you use oh-my-zsh i recommend put this file into $ZSH_CUSTOM directory
#
# Example:
# alias vi='vim'

# common
# alias grepe=" | grep -E "

# git
alias gcd="git checkout dev"

# zsh
alias zshreload="source ~/.zshrc"
alias zshcustom="cd $ZSH_CUSTOM"
alias zshaliases="nano $ZSH_CUSTOM/aliases.zsh"
alias theme="echo $ZSH_THEME"
alias zsh_theme="echo $ZSH_THEME"

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
alias dcupd="docker-compose up -d"
alias dcs="docker-compose stop"
alias dcd="docker-compose down"

# rails deploy
# alias cpd="echo -e '\033[0;31m** PRODUCTION DEPLOYMENT **\033[0m';bundle exec cap production deploy"
alias csd="echo -e '\033[0;33m** STAGING DEPLOYMENT **\033[0m';bundle exec cap staging deploy"

# rails
alias r="bin/rails s"
alias rc="bundle exec bin/rails c"
alias rk="bundle exec rake"
alias be="bundle exec"
alias bi="bundle install"
alias rdb="bundle exec bin/rails dbconsole"
alias sd="bundle exec sidekiq"
alias swag="bundle exec rake rswag:specs:swaggerize"
alias ba="bundler-audit update && bundler-audit"
alias rcreds="EDITOR=nano bin/rails credentials:edit"

# minio
alias minios="MINIO_ACCESS_KEY=access_key MINIO_SECRET_KEY=secret_access_key minio server --address localhost:9000 ~/minio_data "

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
