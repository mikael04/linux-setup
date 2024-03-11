#!/bin/bash

## Removendo travas eventuais do apt ##

# sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Adicionando repositórios ##
## Firefox nightly
sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa &&
## R-base
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 &&
# sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' &&
sudo apt install r-base r-base-dev
## Repositório readtext R package 
#não mais usado
#sudo add-apt-repository -y ppa:cran/poppler &&


## Atualizando o repositório ##
sudo apt update &&

## Instalando pacotes e programas do repositório deb do Ubuntu ##
## Dev
sudo apt install build-essential python3 git libssl-dev lftp &&
sudo apt install --no-install-recommends software-properties-common dirmngr &&
sudo apt install adb fastboot &&
sudo apt install virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso &&

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt flatpak gnome-software-plugin-flatpak -y &&

## Instalando pacotes e programas adicionais ##

sudo apt install kolourpaint firefox-trunk

# ## Instalando pacotes Snap ##
#
# sudo snap install chromium --classic &&
# sudo snap install code --classic &&
# sudo snap install trello &&

## Adicionando repositório Flathub ##

## flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

## Instalando Apps do Flathub ##

sudo flatpak install flathub org.telegram.desktop -y &&
# sudo flatpak install flathub com.github.eneshecan.WhatsAppForLinux &&
sudo flatpak install flathub org.filezillaproject.Filezilla -y &&
# sudo flatpak install flathub com.microsoft.Teams &&
# sudo flatpak install flathub com.ticktick.TickTick -y &&
#sudo flatpak install flathub io.atom.Atom -y &&
sudo flatpak install flathub com.microsoft.Edge -y &&
sudo flatpak install flathub org.freedesktop.Piper -y &&
sudo flatpak install flathub com.opera.Opera -y &&
sudo flatpak install flathub com.github.IsmaelMartinez.teams_for_linux - y &&
sudo flatpak install flathub com.transmissionbt.Transmission - y &&
sudo flatpak install flathub org.kde.kolourpaint - y &&

##Libs linux para libs do R

sudo apt install libcurl4-openssl-dev libpng-dev libfreetype6-dev libxml2-dev libcairo2-dev libfontconfig1-dev libgdal-dev make gfortran zlib1g-dev libssl-dev libsasl2-dev libsodium-dev libudunits2-dev libharfbuzz-dev libfribidi-dev libnode-dev &&

## Transferência de arquivos via ssh e bash

sudo apt install sshpass &&

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
