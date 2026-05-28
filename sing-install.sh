#!/bin/bash

# ==========================================
# BANNER WELCOME (BUATAN SING)
# ==========================================
clear
echo -e "\e[1;32m"
echo "   _____ _             "
echo "  / ___/(_)___  ____ _ "
echo "  \__ \/ / __ \/ __ \`/"
echo " ___/ / / / / / /_/ /  "
echo "/____/_/_/ /_/\__, /   "
echo "             /____/    "
echo -e "\e[1;36m      [ Sing-Termux Theme Installer ]\e[0m"
echo "------------------------------------------------"
echo "Memulai setup tema ZSH keren buat Termux lu..."
echo "------------------------------------------------"
sleep 2

# 1. Bikin folder konfigurasi Termux kalau belum ada
echo -e "\e[1;33m[>] Membuat direktori tema...\e[0m"
mkdir -p ~/.termux

# 2. Ambil tema warna (Color Scheme) - Di sini pakai tema Agnoster/Dark yang populer
echo -e "\e[1;33m[>] Mendownload konfigurasi warna...\e[0m"
curl -fLo ~/.termux/colors.properties https://raw.githubusercontent.com/chriskempson/base16-shell/master/colors/base16-tomorrow-night.properties

# 3. Ambil Font yang support icon (Powerline Font biar gak kotak-kotak)
echo -e "\e[1;33m[>] Mendownload Font Powerline...\e[0m"
curl -fLo ~/.termux/font.ttf https://github.com/romkatv/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20Powerline.ttf

# 4. Refresh Termux agar tema langsung aktif
echo -e "\e[1;33m[>] Menerapkan perubahan...\e[0m"
termux-reload-settings

echo ""
echo -e "\e[1;32m------------------------------------------------"
echo "  SUKSES! Tema Sing-Termux Berhasil Dipasang!   "
echo "------------------------------------------------\e[0m"