iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
refreshenv
cinst ruby -y
cinst msys2 -y
refreshenv
ridk install 1 2 3
gem update --system
gem install rake
gem install bundler
bundle install