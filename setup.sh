# add tmux
sudo apt install tmux
cp ./.tmux.conf ~/

# add zsh
sudo apt-get install zsh

# add powerline
sudo apt-get install powerline-fonts

# add oh my zsh
sudo apt-get install curl
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# customize oh-my-zsh
cat <<EOF > /tmp/out
if [ "$TMUX" = "" ]; then tmux -u; fi
ZSH_THEME="agnoster"
EOF
cat ~/.zshrc >> /tmp/out
mv /tmp/out ~/.zshrc
source ~/.zshrc

# shift prompt to next line
echo 'replace line 82 of ~/.oh-my-zsh/themes/agnoster.zsh-theme with same line of ./agnoster.zsh-theme'


