Clone repository:

git clone https://github.com/lkienvinh/hypr-conf.git


Install required packages:

sudo pacman -S cava fastfetch kitty pavucontrol rofi hyprlock hypridle nautilus swaync waybar hyprland ttf-jetbrains-mono-nerd noto-fonts-cjk flatpak awww hyprshot pipewire wireplumber pipewire-pulse pipewire-alsa pipewire-jack wireless_tools pamixer


Install wlogout:

sudo pacman -S gtk3 gobject-introspection meson

git clone https://github.com/ArtsyMacaw/wlogout.git

cd wlogout

meson build && ninja -C build

sudo ninja -C build install


Move the files from the repository to the ~/.config folder:

mkdir ~/.config

cd hypr-conf

mv cava fastfetch hypr kitty swaync waybar rofi wlogout ~/.config










##EVEN FASTER##
run: sudo chmod +x install.sh
sudo ./install.sh
(THE INSTALL.SH IS ALSO IN THE REPO, RUN IT TO INSTALL FASTER **IT MAY OVERRIDE YOUR CONFIG FILES**
