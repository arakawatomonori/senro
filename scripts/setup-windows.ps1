iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
cinst ruby
cinst msys2
refreshenv
ridk install 1 2 3
gem install bundler
bundle install