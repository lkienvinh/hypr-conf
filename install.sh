#!/bin/bash

echo "The installation will start in 5.."
sleep 1
echo "4.."
sleep 1
echo "3.."
sleep 1
echo "2.."
sleep 1
echo "1.."
sleep 1
echo "Execute!"
sleep 1
sudo pacman -S --noconfirm git base-devel
sudo pacman -S --noconfirm curl cava fastfetch kitty pavucontrol rofi hyprlock hypridle nautilus zsh swaync waybar hyprland ttf-jetbrains-mono-nerd noto-fonts-cjk flatpak awww hyprshot pipewire wireplumber pipewire-pulse pipewire-alsa pipewire-jack wireless_tools pamixer gtk3 gobject-introspection meson xdg-desktop-portal xdg-desktop-portal-hyprland
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
cd ~
git clone https://github.com/ArtsyMacaw/wlogout.git
cd wlogout
meson build && ninja -C build
sudo ninja -C build install
mkdir -p ~/Pictures
rm -rf ~/.config/hypr
cp -r ~/hypr-conf/cava ~/hypr-conf/fastfetch ~/hypr-conf/hypr ~/hypr-conf/kitty ~/hypr-conf/swaync ~/hypr-conf/waybar ~/hypr-conf/rofi ~/hypr-conf/wlogout ~/.config
cp -r ~/hypr-conf/Wallpapers ~/Pictures
echo "shell /usr/bin/zsh" >> ~/.config/kitty/kitty.conf
echo "Installation complete!"
