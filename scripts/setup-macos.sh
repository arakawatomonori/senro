/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install postgresql
brew install rbenv
rbenv install 2.6.4
rbenv local 2.6.4
bundle install