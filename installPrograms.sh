#/usr/bin

echo "$1";
sudo mkdir /opt/openshot && cd /opt/openshot
cp "$1"OpenShot-v2.4.3-x86_64.AppImage /opt/openshot
chmod +x /opt/openshot/OpenShot-v2.4.3-x86_64.AppImage
cd /usr/bin
sudo ln -s /opt/openshot/OpenShot-v2.4.3-x86_64.AppImage openshot

dpkg -i "$1"drivers/*.deb
dpkg -i "$1"flatpak/*.deb

sudo flatpak install "$1"flatpakProgramas/runtimegnome.flatpak
sudo flatpak install "$1"flatpakProgramas/runtimeplataform16.flatpak
sudo flatpak install "$1"flatpakProgramas/runtimefreedesktop.flatpak
sudo flatpak install "$1"flatpakProgramas/runtimeaudacity.flatpak
sudo flatpak install "$1"flatpakProgramas/libreoffice.flatpak
sudo flatpak install "$1"flatpakProgramas/gimp.flatpak
sudo flatpak install "$1"flatpakProgramas/audacity.flatpak
sudo flatpak install "$1"flatpakProgramas/inkscape.flatpak


