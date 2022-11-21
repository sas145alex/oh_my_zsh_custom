# system general
alias rboot="shutdown -r now"

# zsh
alias zshreload="source ~/.zshrc"
alias zshcustom="cd $ZSH_CUSTOM"
alias zshaliases="nano $ZSH_CUSTOM/aliases.zsh"
alias zshtheme="echo $ZSH_THEME"

# rails
alias r="bin/rails s"
alias rc="bundle exec bin/rails c"
alias rk="bundle exec rake"
alias be="bundle exec"
alias bi="bundle install"
alias rdb="bundle exec bin/rails dbconsole"
alias berf="bundle exec rspec --tag=focus"
alias ber="bundle exec rspec"

# sidekiq
alias sd="bundle exec sidekiq"
alias sdc="bundle exec sidekiq -C config/sidekiq.yml"

# system dependent aliases
case "$(uname -s)" in
  "Linux")
    alias here="nautilus . >/dev/null 2>&1 &; disown"
    alias ls="ls -Gp --color=auto"
    alias ppsql="sudo -u postgres psql"
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

