#!/bin/bash

echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

# on my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc
# source ~/.zshrc
# curl .zshrc from github repo
# curl https://raw.githubusercontent.com/totemofwolf/hello-world/master/.zshrc -O ~/.zshrc
curl https://raw.githubusercontent.com/totemofwolf/hello-world/master/.zshrc --output ~/.zshrc

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew cask
brew doctor; brew cask

# wget, libxml2
brew install wget libxml2 autojump

# Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember to source the file to update your current session):
# echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc

sudo pkill ntpd
sudo pkill ntpd
sudo pkill ntpd
sudo ntpdate pool.ntp.org

curl -L https://iterm2.com/misc/install_shell_integration_and_utilities.sh | bash

# echo 'export PATH="/usr/local/sbin:$PATH"' >> .zshrc
# brew install autojump
# echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc
# source ~/.zshrc

# Public Beta
# sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL  https://swscan.apple.com/content/catalogs/others/index-10.11beta-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz

# Developer Preview
# sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL https://swscan.apple.com/content/catalogs/others/index-10.11seed-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz

# sudo softwareupdate --clear-catalog

sudo softwareupdate -liav

cd /Library/LaunchDaemons
launchctl unload com.ssd.noatime.plist
launchctl unload com.w0ng.cron.periodic.daily.plist
launchctl unload com.w0ng.cron.periodic.monthly.plist
launchctl unload com.w0ng.cron.periodic.weekly.plist
launchctl unload com.w0ng.cron.softwareupdate.daily.plist

launchctl load com.ssd.noatime.plist
launchctl load com.w0ng.cron.periodic.daily.plist
launchctl load com.w0ng.cron.periodic.monthly.plist
launchctl load com.w0ng.cron.periodic.weekly.plist
launchctl load com.w0ng.cron.softwareupdate.daily.plist

launchctl list | grep com.w0ng
-	0	com.w0ng.cron.softwareupdate.daily.plist
-	0	com.w0ng.cron.periodic.weekly.plist
-	0	com.w0ng.cron.periodic.daily.plist
-	0	com.w0ng.cron.periodic.monthly.plist


ssh-keygen -t rsa -C "gk.wl@foxmail.com"
# cat .ssh/id_rsa.pub

ssh -T git@github.com
# Hi totemofwolf! You've successfully authenticated, but GitHub does not provide shell access.
git config --global user.name "unic0rn.w0ng"
git config --global user.email "gk.wl@foxmail.com"
git config --global push.default simple

hello-world git:(master) ✗ git add .zshrc
git commit "add .zshrc in hello-word

# To do a system update on OS X El Capitan:
Disable SIP
Apply System Update (with reboot)
Enable SIP, reboot

# To fix an unbootable system via Terminal:
fsck -fy
mount -uw /
touch /System/Library/Extensions && kextcache -u /
reboot

# fonts
defaults -currentHost write -globalDomain AppleFontSmoothing -int 1
