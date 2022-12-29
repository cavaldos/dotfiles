#!/bin/bash

: '
  ⣿⣿⣷⡁⢆⠈⠕⢕⢂⢕⢂⢕⢂⢔⢂⢕⢄⠂⣂⠂⠆⢂⢕⢂⢕⢂⢕⢂⢕⢂
  ⣿⣿⣿⡷⠊⡢⡹⣦⡑⢂⢕⢂⢕⢂⢕⢂⠕⠔⠌⠝⠛⠶⠶⢶⣦⣄⢂⢕⢂⢕
  ⣿⣿⠏⣠⣾⣦⡐⢌⢿⣷⣦⣅⡑⠕⠡⠐⢿⠿⣛⠟⠛⠛⠛⠛⠡⢷⡈⢂⢕⢂
  ⠟⣡⣾⣿⣿⣿⣿⣦⣑⠝⢿⣿⣿⣿⣿⣿⡵⢁⣤⣶⣶⣿⢿⢿⢿⡟⢻⣤⢑⢂
  ⣾⣿⣿⡿⢟⣛⣻⣿⣿⣿⣦⣬⣙⣻⣿⣿⣷⣿⣿⢟⢝⢕⢕⢕⢕⢽⣿⣿⣷⣔
  ⣿⣿⠵⠚⠉⢀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⢕⢕⢕⢕⢕⢕⣽⣿⣿⣿⣿
  ⢷⣂⣠⣴⣾⡿⡿⡻⡻⣿⣿⣴⣿⣿⣿⣿⣿⣿⣷⣵⣵⣵⣷⣿⣿⣿⣿⣿⣿⡿
  ⢌⠻⣿⡿⡫⡪⡪⡪⡪⣺⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃
  ⠣⡁⠹⡪⡪⡪⡪⣪⣾⣿⣿⣿⣿⠋⠐⢉⢍⢄⢌⠻⣿⣿⣿⣿⣿⣿⣿⣿⠏⠈
  ⡣⡘⢄⠙⣾⣾⣾⣿⣿⣿⣿⣿⣿⡀⢐⢕⢕⢕⢕⢕⡘⣿⣿⣿⣿⣿⣿⠏⠠⠈
  ⠌⢊⢂⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢐⢕⢕⢕⢕⢕⢅⣿⣿⣿⣿⡿⢋⢜⠠⠈
  ⠄⠁⠕⢝⡢⠈⠻⣿⣿⣿⣿⣿⣿⣿⣷⣕⣑⣑⣑⣵⣿⣿⣿⡿⢋⢔⢕⣿⠠⠈
  ⠨⡂⡀⢑⢕⡅⠂⠄⠉⠛⠻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⢔⢕⢕⣿⣿⠠⠈
  ⠄⠪⣂⠁⢕⠆⠄⠂⠄⠁⡀⠂⡀⠄⢈⠉⢍⢛⢛⢛⢋⢔⢕⢕⢕⣽⣿⣿⠠⠈

  Script to install dotfiles
  ⚠️ Only supports Arch Linux
  Make by phamhiep2506
  Contacts me:
    - Github: https://github.com/phamhiep2506
    - Facebook: https://fb.com/phamhiep2506
'

# Color
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"
APP="$HOME/Applications" # path /home/user/Applications
HACKNF_VER="2.1.0" # font hack nerd font version
BRAVE_VER="1.44.8" # brave browser version
NETCOREDBG_VER="2.0.0-915" # debug c#
NODEJS_VER="16.16.0"
YARN_VER="1.22.19"
DOCKER_VER="20.10.9"
PYTHON_VER="3.9.13"
DEPENDENCIES="`sed -e 's/#.*$//' -e '/^$/d' dependencies.txt | tr '\n' ' '`" # List dependencies

# Main
if [ -f "/usr/bin/pacman" ]; then

  # Update arch linux
  printf "$GREEN[+] Update arch linux...$ENDCOLOR\n"
  sleep 1
  sudo pacman -Syu

  # Install dependencies
  printf "$GREEN[+] Install dependencies...$ENDCOLOR\n"
  sleep 1
  sudo pacman -S $DEPENDENCIES

  # Create directory Applications
  [ ! -d $HOME/Applications ] && mkdir -p $HOME/Applications

  # Create directory fonts
  [ ! -d $HOME/.local/share/fonts ] && mkdir -p $HOME/.local/share/fonts

  # Create directory bin
  [ ! -d $HOME/.local/bin ] && mkdir -p $HOME/.local/bin

  # Create directory .config
  [ ! -d $HOME/.config ] && mkdir -p $HOME/.config

  # Create directory icons
  [ ! -d $HOME/.local/share/icons ] && mkdir -p $HOME/.local/share/icons

  [ ! -d $HOME/.icons/default ] && mkdir -p $HOME/.icons/default

  # Create directory .theme
  [ ! -d $HOME/.themes ] && mkdir -p $HOME/.themes

  # Create directory .icons
  [ ! -d $HOME/.icons ] && mkdir -p $HOME/.icons

  # Install font hack nerd font
  if [ -d $HOME/.local/share/fonts/HackNF ]; then
    printf "${GREEN}✔️ Directory $HOME/.local/share/fonts/HackNF.${ENDCOLOR}\n"
  else
    # Download font HackNF.zip
    printf "${GREEN}✔️ Download HackNF.zip.${ENDCOLOR}\n"
    [ ! -f $HOME/.local/share/fonts/HackNF.zip ] && wget -O $HOME/.local/share/fonts/HackNF.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v$HACKNF_VER/Hack.zip
    printf "$GREEN[+] Unzip HackNF.zip...$ENDCOLOR\n"
    sleep 1
    mkdir -p $HOME/.local/share/fonts/HackNF
    unzip $HOME/.local/share/fonts/HackNF.zip -d $HOME/.local/share/fonts/HackNF
    fc-cache # update font
  fi

  # Symbolic path zsh
  printf "$GREEN[+] Config zsh...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.zshrc ] && ln -s $HOME/dotfiles/.zshrc $HOME
  [ ! -L $HOME/.zshenv ] && ln -s $HOME/dotfiles/.zshenv $HOME
  [ ! -L $HOME/.zprofile ] && ln -s $HOME/dotfiles/.zprofile $HOME
  [ ! -L $HOME/.zsh ] && ln -s $HOME/dotfiles/.zsh $HOME

  # Install plugin zsh
  if [[ -d $HOME/.zsh/zsh-autosuggestions && -d $HOME/.zsh/zsh-syntax-highlighting ]]; then
    printf "${GREEN}✔️ Directory $HOME/.zsh/zsh-autosuggestions.${ENDCOLOR}\n"
    printf "${GREEN}✔️ Directory $HOME/.zsh/zsh-syntax-highlighting.${ENDCOLOR}\n"
  else
    cd $HOME/.zsh && ./zsh-plugins.sh
  fi

  # Change shell bash to zsh
  printf "$GREEN[+] Change shell zsh...$ENDCOLOR\n"
  sleep 1
  [ $SHELL != "/usr/bin/zsh" ] && chsh -s $(which zsh)

  # Symbolic path tmux
  printf "$GREEN[+] Config tmux...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.tmux.conf ] && ln -s $HOME/dotfiles/.tmux.conf $HOME
  [ ! -L $HOME/.tmux ] && ln -s $HOME/dotfiles/.tmux $HOME

  # Install plugin tmux
  if [ -d $HOME/.tmux/tmux-yank ]; then
    printf "${GREEN}✔️ Directory $HOME/.tmux/tmux-yank.${ENDCOLOR}\n"
  else
    cd $HOME/.tmux && ./tmux-plugins.sh
  fi

  # Config alacritty
  printf "$GREEN[+] Config alacritty...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.config/alacritty ] && ln -s $HOME/dotfiles/.config/alacritty $HOME/.config

  # Config .xinitrc
  printf "$GREEN[+] Config .xinitrc...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.xinitrc ] && ln -s $HOME/dotfiles/.xinitrc $HOME

  # Brave Browser
  if [ -d $APP/brave ]; then
    printf "${GREEN}✔️ Directory $APP/brave.${ENDCOLOR}\n"
  else
    # Download brave.zip
    printf "${GREEN}✔️ Download brave.zip.${ENDCOLOR}\n"
    wget -O $APP/brave.zip https://github.com/brave/brave-browser/releases/download/v$BRAVE_VER/brave-browser-nightly-$BRAVE_VER-linux-amd64.zip
    printf "$GREEN[+] Unzip brave.zip...$ENDCOLOR\n"
    sleep 1
    mkdir -p $APP/brave
    unzip $APP/brave.zip -d $APP/brave
    [ ! -L $HOME/.local/bin/brave ] && ln -s $APP/brave/brave $HOME/.local/bin
    rm -rf $APP/brave.zip
  fi

  # Symbolic path i3
  printf "$GREEN[+] Config i3wm...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.config/i3 ] && ln -s $HOME/dotfiles/.config/i3 $HOME/.config

  # Symbolic path polybar
  printf "$GREEN[+] Config polybar...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.config/polybar ] && ln -s $HOME/dotfiles/.config/polybar $HOME/.config

  # Symbolic path rofi
  printf "$GREEN[+] Config rofi...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.config/rofi ] && ln -s $HOME/dotfiles/.config/rofi $HOME/.config

  # Symbolic path ranger
  printf "$GREEN[+] Config ranger...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.config/ranger ] && ln -s $HOME/dotfiles/.config/ranger $HOME/.config
  mkdir -p $HOME/.config/ranger/plugins
  [ ! -d $HOME/.config/ranger/plugins/ranger_devicons ] && git clone https://github.com/alexanderjeurissen/ranger_devicons $HOME/.config/ranger/plugins/ranger_devicons

  # Symbolic touchpad
  printf "$GREEN[+] Config touchpad...$ENDCOLOR\n"
  sleep 1
  [ ! -L /etc/X11/xorg.conf.d/30-touchpad.conf ] && sudo ln -s $HOME/dotfiles/30-touchpad.conf /etc/X11/xorg.conf.d

  # Config backlight
  printf "$GREEN[+] Config backlight...$ENDCOLOR\n"
  sleep 1
  sudo usermod -a -G video $USER
  echo -e "RUN+=\"/bin/chgrp video /sys/class/backlight/intel_backlight/brightness\"\nRUN+=\"/bin/chmod g+w /sys/class/backlight/intel_backlight/brightness\"" | sudo tee /etc/udev/rules.d/backlight.rules

  # Custom cursor
  printf "$GREEN[+] Config cursor theme...$ENDCOLOR\n"
  sleep 1
  [ ! -d $HOME/.local/share/icons/Breeze ] && tar -xvf $HOME/dotfiles/Breeze.tgz -C $HOME/.local/share/icons
  [ ! -f $HOME/.icons/default/index.theme ] && echo -e "[icon theme]\nInherits=Breeze" | tee $HOME/.icons/default/index.theme
  [ ! -L $HOME/.config/gtk-3.0 ] && ln -s $HOME/dotfiles/.config/gtk-3.0 $HOME/.config
  [ ! -L $HOME/.gtkrc-2.0 ] && ln -s $HOME/dotfiles/.gtkrc-2.0 $HOME
  [ ! -L /usr/share/icons/Breeze ] && sudo ln -s $HOME/.local/share/icons/Breeze /usr/share/icons/
  echo -e "[icon theme]\nInherits=Breeze" | sudo tee $HOME/.icons/default/index.theme

  # gtk theme TokyoNight
  printf "$GREEN[+] Config gtk theme...$ENDCOLOR\n"
  sleep 1
  if [ -d $HOME/.themes/Tokyonight-Dark-B ]; then
    printf "${GREEN}✔️ Directory $HOME/.themes/Tokyonight-Dark-B.${ENDCOLOR}\n"
  else
    unzip $HOME/dotfiles/Tokyonight-Dark-B.zip -d $HOME/.themes
  fi

  # pick color
  [ ! -L $HOME/.local/bin/cpick ] && ln -s $HOME/dotfiles/scripts/cpick $HOME/.local/bin

  # battery notificaton
  [ ! -L $HOME/.local/bin/battery ] && ln -s $HOME/dotfiles/scripts/battery $HOME/.local/bin

  # volume notificaton
  [ ! -L $HOME/.local/bin/volume ] && ln -s $HOME/dotfiles/scripts/volume $HOME/.local/bin

  # backlight notificaton
  [ ! -L $HOME/.local/bin/blight ] && ln -s $HOME/dotfiles/scripts/blight $HOME/.local/bin

  # screenkey
  [ ! -L $HOME/.local/bin/skey ] && ln -s $HOME/dotfiles/scripts/skey $HOME/.local/bin

  # gtk theme icon TokyoNight
  printf "$GREEN[+] Config gtk icon theme...$ENDCOLOR\n"
  sleep 1
  if [ -d $HOME/.icons/tokyonight_dark ]; then
    printf "${GREEN}✔️ Directory $HOME/.icons/tokyonight_dark.${ENDCOLOR}\n"
  else
    unzip $HOME/dotfiles/Tokyonight_Dark_Icons.zip -d $HOME/.icons
  fi

  # Slock suckless
  printf "$GREEN[+] Compile slock...$ENDCOLOR\n"
  sleep 1
  cd $HOME/dotfiles/slock && sudo make clean install
  echo -e "[Unit]\nDescription=Lock X session using slock for user %i\nBefore=sleep.target\n\n[Service]\nUser=%i\nEnvironment=DISPLAY=:0\nExecStartPre=/usr/bin/xset dpms force suspend\nExecStart=/usr/local/bin/slock\n\n[Install]\nWantedBy=sleep.target" | sudo tee /etc/systemd/system/slock@.service
  sudo systemctl enable slock@$USER.service

  # st termial suckless
  # printf "$GREEN[+] Compile st...$ENDCOLOR\n"
  # sleep 1
  # [ ! -d $APP/st ] && git clone https://github.com/phamhiep2506/st $APP/st
  # cd $APP/st && sudo make clean install
  #
  # # picom
  # printf "$GREEN[+] Config picom...$ENDCOLOR\n"
  # sleep 1
  # [ ! -L $HOME/.config/picom ] && ln -s $HOME/dotfiles/.config/picom $HOME/.config

  # dunst
  printf "$GREEN[+] Config dunst...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.config/dunst ] && ln -s $HOME/dotfiles/.config/dunst $HOME/.config

  # neovim
  printf "$GREEN[+] Config neovim...$ENDCOLOR\n"
  sleep 1
  [ ! -L $HOME/.config/nvim ] && ln -s $HOME/dotfiles/.config/nvim $HOME/.config

  #ibus bamboo
  if [ -d $APP/ibus-bamboo ]; then
    printf "${GREEN}✔️ Directory $APP/ibus-bamboo.${ENDCOLOR}\n"
  else
    git clone https://github.com/BambooEngine/ibus-bamboo.git $APP/ibus-bamboo
    cd $APP/ibus-bamboo && sudo make install
    ibus restart
  fi

  #xborder
  if [ -d $APP/xborder ]; then
    printf "${GREEN}✔️ Directory $APP/xborder.${ENDCOLOR}\n"
  else
    git clone https://github.com/deter0/xborder.git $APP/ibus-bamboo
    cd $APP/xborder && chmod +x xborders
    [ ! -L $HOME/.local/bin/xborders ] && ln -s $APP/xborder/xborders $HOME/.local/bin
  fi

  # .net core
  while true; do
      printf "$GREEN[+] Install .NET Core...[y/n] $ENDCOLOR"
      sleep 1
      read yn
      case $yn in
          [Yy]* )
            rm -rf $APP/dotnet
            wget -O $HOME/dotnet-install.sh https://dot.net/v1/dotnet-install.sh
            bash $HOME/dotnet-install.sh --channel LTS --os linux --install-dir $APP/dotnet --verbose
            [ ! -L $HOME/.local/bin/dotnet ] && ln -s $APP/dotnet/dotnet $HOME/.local/bin
            rm -f $HOME/dotnet-install.sh
            break
            ;;
          [Nn]* )
            break
            ;;
          * )
            echo "Please answer y or n."
            ;;
      esac
  done

  # netcoredbg debug
  while true; do
      printf "$GREEN[+] Install netcoredbg...[y/n] $ENDCOLOR"
      sleep 1
      read yn
      case $yn in
          [Yy]* )
            rm -rf $APP/netcoredbg
            wget -O $HOME/netcoredbg.tar.gz https://github.com/Samsung/netcoredbg/releases/download/$NETCOREDBG_VER/netcoredbg-linux-amd64.tar.gz
            printf "$GREEN[+] Unzip netcoredbg...$ENDCOLOR"
            sleep 1
            tar -xvf $HOME/netcoredbg.tar.gz -C $APP
            rm -f $HOME/netcoredbg.tar.gz
            [ ! -L $HOME/.local/bin/netcoredbg ] && ln -s $APP/netcoredbg/netcoredbg $HOME/.local/bin
            break
            ;;
          [Nn]* )
            break
            ;;
          * )
            echo "Please answer y or n."
            ;;
      esac
  done

  # nodejs
  while true; do
      printf "$GREEN[+] Install Nodejs...[y/n] $ENDCOLOR"
      sleep 1
      read yn
      case $yn in
          [Yy]* )
            rm -rf $APP/nodejs
            wget -O $HOME/nodejs.tar.xz https://nodejs.org/dist/v$NODEJS_VER/node-v$NODEJS_VER-linux-x64.tar.xz
            printf "$GREEN[+] Unzip Nodejs...$ENDCOLOR"
            sleep 1
            mkdir -p $APP/nodejs
            tar -xvf $HOME/nodejs.tar.xz -C $APP/nodejs --strip-components=1
            [ ! -L $HOME/.local/bin/node ] && ln -s $APP/nodejs/bin/node $HOME/.local/bin
            [ ! -L $HOME/.local/bin/npm ] && ln -s $APP/nodejs/bin/npm $HOME/.local/bin
            [ ! -L $HOME/.local/bin/npx ] && ln -s $APP/nodejs/bin/npx $HOME/.local/bin
            rm -f $HOME/nodejs.tar.xz
            break
            ;;
          [Nn]* )
            break
            ;;
          * )
            echo "Please answer y or n."
            ;;
      esac
  done

  # yarn
  while true; do
      printf "$GREEN[+] Install yarn...[y/n] $ENDCOLOR"
      sleep 1
      read yn
      case $yn in
          [Yy]* )
            rm -rf $APP/yarn
            wget -O $HOME/yarn.tar.gz https://github.com/yarnpkg/yarn/releases/download/v$YARN_VER/yarn-v$YARN_VER.tar.gz
            printf "$GREEN[+] Unzip yarn...$ENDCOLOR"
            sleep 1
            mkdir -p $APP/yarn
            tar -xvf $HOME/yarn.tar.gz -C $APP/yarn --strip-components=1
            [ ! -L $HOME/.local/bin/yarn ] && ln -s $APP/yarn/bin/yarn $HOME/.local/bin
            rm -f $HOME/yarn.tar.gz
            break
            ;;
          [Nn]* )
            break
            ;;
          * )
            echo "Please answer y or n."
            ;;
      esac
  done

  # docker
  while true; do
      printf "$GREEN[+] Install docker...[y/n] $ENDCOLOR"
      sleep 1
      read yn
      case $yn in
          [Yy]* )
            rm -rf $APP/docker
            wget -O $HOME/docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VER.tgz
            printf "$GREEN[+] Unzip docker...$ENDCOLOR"
            sleep 1
            mkdir -p $APP/docker
            tar -xvf $HOME/docker.tgz -C $APP/docker --strip-components=1
            docker_bin=("containerd" "containerd-shim" "containerd-shim-runc-v2" "ctr" "docker" "dockerd" "docker-init" "docker-proxy" "runc")
            for i in "${docker_bin[@]}"; do
              [ ! -L /usr/bin/$i ] && sudo ln -s $APP/docker/$i /usr/bin
            done
            rm -f $HOME/docker.tgz
            break
            ;;
          [Nn]* )
            break
            ;;
          * )
            echo "Please answer y or n."
            ;;
      esac
  done

  # vscode
  while true; do
      printf "$GREEN[+] Install vscode...[y/n] $ENDCOLOR"
      sleep 1
      read yn
      case $yn in
          [Yy]* )
            rm -rf $APP/vscode
            aria2c -d $HOME -o vscode.tar.gz "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64"
            printf "$GREEN[+] Unzip vscode...$ENDCOLOR"
            sleep 1
            mkdir -p $APP/vscode
            tar -xvf $HOME/vscode.tar.gz -C $APP/vscode --strip-components=1
            [ ! -L $HOME/.local/bin/code ] && ln -s $APP/vscode/bin/code $HOME/.local/bin
            $HOME/.local/bin/code --install-extension vscodevim.vim
            $HOME/.local/bin/code --install-extension enkia.tokyo-night
            $HOME/.local/bin/code --install-extension s-nlf-fh.glassit
            mkdir -p $HOME/.config/Code/User
            [ ! -L $HOME/.config/Code/User/settings.json ] && ln -s $HOME/dotfiles/.config/vscode/settings.json $HOME/.config/Code/User
            [ ! -L $HOME/.config/Code/User/keybindings.json ] && ln -s $HOME/dotfiles/.config/vscode/keybindings.json $HOME/.config/Code/User
            rm -rf $HOME/vscode.tar.gz
            break
            ;;
          [Nn]* )
            break
            ;;
          * )
            echo "Please answer y or n."
            ;;
      esac
  done

  # pyenv + python 3.9.13
  while true; do
      printf "$GREEN[+] Install python $PYTHON_VER...[y/n] $ENDCOLOR"
      sleep 1
      read yn
      case $yn in
          [Yy]* )
            printf "$GREEN[+] Compile python $PYTHON_VER...$ENDCOLOR"
            sleep 1
            pyenv install $PYTHON_VER
            printf "$GREEN[+] Setup python $PYTHON_VER...$ENDCOLOR"
            sleep 1
            pyenv global $PYTHON_VER
            break
            ;;
          [Nn]* )
            break
            ;;
          * )
            echo "Please answer y or n."
            ;;
      esac
  done

  # Done
  printf "$GREEN✔️ Config dotfile done.$ENDCOLOR\n"
  printf "$YELLOW[*] Please reboot computer. $ENDCOLOR\n"
else
  printf "$RED❌pacman binary does not exist. Only supports Arch Linux.$ENDCOLOR\n"
fi
