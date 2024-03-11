## Interface

Usar barra superior do KDE (deixar apenas ícones a direita (notificações), pager e relógio)
Baixar widgets (spacing com extensão panel spacer extended)
Instalar mediaplayer widget, thermal monitor e color picker


## Aplicações
Criar atalhos para aplicativos, keep do google, bing, bard microsoft planner e trello (criar atalho via edge)

## R e RStudio

## SSH linux

- Se quiser apenas uma chave:

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

ssh-keygen -t ed25519 -C "email"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

Depois:
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

cat ~/.ssh/id_ed25519.pub

Para o Gcloud usar:
https://cloud.google.com/compute/docs/connect/create-ssh-keys?hl=pt-br#linux-and-macos
Criar chave com comando, depois ir na VM, editar e adicionar a chave pública
Para acessar, ou usar ssh-add, ou usar o comando -i ~/.ssh/chave_privada

## RStudio pacotes
 install.packages(c("arrow", "data.table", "DBI", "dbplyr", "devtools", "dplyr", "DT", "dtplyr", "fst", "ggplot2", "golem", "gt", "janitor", "leaflet", "lubridate", "mongolite", "plotly", "quarto", "reactable", "remotes", "rgdal", "semantic.dashboard", "shinipsum", "shinydashboard", "shinyjs", "shinyWidgets", "skimr", "sf", "sp", "thematic", "thinkR",  "tidyverse", "usethis", "writexl"))


# sudo apt install lftp

## Montar Partições e SSDs (automount)
https://askubuntu.com/questions/164926/how-to-make-partitions-mount-at-startup

# Outros
## Reiniciar o PlasmaShell
kquitapp5 plasmashell || killall plasmashell && kstart5 plasmashell

## Para recuperar win key (super) caso se perca
kwriteconfig5 --file ~/.config/kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.plasmashell,/PlasmaShell,org.kde.PlasmaShell,activateLauncherMenu"

 ou
kwriteconfig5 --file ~/.config/kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.plasmashell,/PlasmaShell,org.kde.PlasmaShell,activateLauncherMenu"
qdbus org.kde.KWin /KWin reconfigure


## Para remover code insiders e code de abrir arquivos
 sudo nano /usr/share/applications/mimeinfo.cache 


Para o VirtualBox ler os dispositivos USB:

sudo usermod -aG vboxusers uservm
(Sendo uservm o nome do usuário do host linux)

# Adicionado a instalação inicial
 Instalar o lftp para enviar arquivos locais para o servidor da google Cloud (Projetos Coorte 100M e Nascimentos)


ksysguard thermal monitor

Download ksysguardd_5.18.4.1-0ubuntu1_amd64.deb

http://archive.ubuntu.com/ubuntu/pool/universe/k/ksysguard/ksysguardd_5.18.4.1-0ubuntu1_amd64.deb

sudo dpkg -i ksysguardd_5.18.4.1-0ubuntu1_amd64.deb

relogin, it should work


## FFmpeg mp4 to mp3 (todos os arquivos na pasta)

for i in *.mp4; do ffmpeg -i "$i" "${i%.*}.mp3"; done


## Converter .aac pra .mp3

ffmpeg -i audio.aac -acodec libmp3lame audio.mp3

for i in *aac; do ffmpeg -i "$i" -acodec libmp3lame "${i%.*}.mp3"; done

## Adicionar linha mp3 ao vídeo mp4

### Individual

ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac output.mp4


### Todos na pasta

for i in *mp4; do ffmpeg -i "$i" -i "${i%.*}.mp3" -c:v copy -c:a aac "${i%.*}"_.mp4; done

## Montar partições automaticamente

https://developerinsider.co/auto-mount-drive-in-ubuntu-server-22-04-at-startup/


## Adicionar audio output por atalho [Não funcionando]

Open the terminal and type:
 sudo nano /usr/local/bin/audio-device-switch.sh
Copy and paste the below code in nano editor (https://askubuntu.com/questions/156895/how-to-switch-sound-output-with-key-shortcut)

Save it and close nano editor.

sudo chmod 755 /usr/local/bin/audio-device-switch.sh

System -> Preferences -> Keyboard Shortcuts

Press Add and enter Switch between audio devices as name and audio-device-switch.sh as command and press Apply. (só copiar o caminho, senão conseguir selecionar diretamente)

Select the newly added shortcut row and click on the shortcut column. 8. Choose a shortcut combination – e.g. ctrl+shift+F11.

## Adicionar audio output por atalho [último funcional]

Usar Sound Switcher Indicator,
- Adicionar ao painel de atalhos (aplicativo não abrindo pelo menu de aplicações)
- Configurar atalhos para saídas (ctrl+shift+F9 e ctrl+shift+F10)

## Peak (gravar tela)

Instalar software Peak


## SMB Share

https://computingforgeeks.com/how-to-configure-samba-share-on-debian/

Resolvendo problema no VLC
https://code.videolan.org/videolan/vlc/-/issues/22909

## Error EMFILE: too many files open

I think I've found a solution:

Set limits in /etc/sysctl.conf by adding:
fs.inotify.max_user_watches=524288
fs.inotify.max_user_instances=512
Open a new terminal or reload sysctl.conf variables with

sudo sysctl --system

## Adicionar buscas customizadas firefox

Ir para busca desejada, clicar com botão direito do mouse e clicar em adicionar atalho à pesquisa, salvar no favorito.
Preferências do firefox, ir em pesquisa , adicionar pesquisa, buscar a URL da pesquisa, pelo favorito adicionado anteriormente
Adicionar atalho para busca (por exemplo, no ludopedia, atalho "l")


