export PATH="/usr/local/mysql/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

alias e-run-api="bundle exec rvmsudo rails s -b 127.0.0.1 -p  80"
alias e-copy-app="cp -r dist/* ../e-sign-api-v2/public/"
alias docker-postgres="docker run --rm --name pg-docker  -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v ~/docker/volumes/postgres:/var/lib/postgresql/data  postgres"
alias website-production="ssh -i ~/.ssh/id_esign_website esign@34.252.198.42"
alias website-staging="ssh -i ~/.ssh/id_staging_esign staging@34.252.198.42"
alias website-root="ssh -i ~/.ssh/id_root_website ec2-user@34.252.198.42"
alias sasstics-server="ssh -i '~/.ssh/sasstics.pem' ec2-user@ec2-54-216-54-190.eu-west-1.compute.amazonaws.com"
alias be="bundle exec"
alias ssh-e-sign="ssh esign@185.74.59.50"
alias cd-v3="cd /Users/chrisward/Sites/e-sign-api-v3"
alias cd-v2="cd /Users/chrisward/Sites/e-sign-api-v2"
alias cd-app="cd /Users/chrisward/Sites/e-sign-app"
alias ssh-galera="ssh -i ~/.ssh/id_root_gelara root@34.255.37.99"
alias ds-prune="docker system prune"
export PATH=$PATH:$HOME/bin:/usr/local/bin:/Users/chrisward/.rvm/gems/ruby-2.7.2/bin:/Users/chrisward/.rvm/gems/ruby-2.7.2@global/bin:/Users/chrisward/.rvm/rubies/ruby-2.7.2/bin:/Users/chrisward/.rvm/gems/ruby-2.3.1/bin:/Users/chrisward/.rvm/gems/ruby-2.3.1@global/bin:/Users/chrisward/.rvm/rubies/ruby-2.3.1/bin:/Users/chrisward/.rvm/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar:/usr/local/go/bin:/usr/local/share/dotnet:/opt/X11/bin:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

export VISUAL=vim
export EDITOR="subl -w"

test -f ~/.git-completion.bash && . $_
