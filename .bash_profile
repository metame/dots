for f in $(find $HOME/.bash_profile.d -type f | sort) ; do
  source "$f"
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}


## Dynamo
alias dynamo='java -Djava.library.path=~/Dynamo/DynamoDBLocal_lib -jar ~/Dynamo/DynamoDBLocal.jar -sharedDb'
gd=~/ce/glassd
PATH=$PATH:/usr/local/sbin
PATH=$PATH:~/.local/bin
alias tailapache='tail -f /Applications/MAMP/logs/apache_error.log'
alias tailphp='tail -f /Applications/MAMP/logs/php_error.log'
alias mergepdf='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=out.pdf'
alias yTtoMP3='youtube-dl --extract-audio --audio-format mp3'

## alias delete-orhpaned-branches="git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs -r git branch -d"

if [ -e /Users/me/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/me/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer



test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH=$PATH:~/go/bin

## jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# export PATH="/usr/local/opt/openjdk/bin:$PATH"
. "$HOME/.cargo/env"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH=$PATH:/Users/me/oss/zig-macos-x86_64-0.12.0-dev.1396+f6de3ec96/
# ~/.bashrc

# racket
export PATH=$PATH:/Applications/Racket\ v8.10/bin/

eval "$(starship init bash)"
