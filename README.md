# inclucionDigital
----------------------------  
Para consulta acerca de los equipos y algunos problemas consulte la carpeta manuales. 

Empaquetar programas en flatpak  
## -Instalar  
`apt-get install flatpak`  
## -Preparar instalacion offline de flatpak  
Extraer los archivos  
+  bubblewrap_0.1.7-1_amd64.deb
+  flatpak_0.8.9-0+deb9u1_amd64.deb
+  gnome-software-plugin-flatpak_3.22.5-1_amd64.deb
+  libostree-1-1_2016.15-5_amd64.deb
+  xdg-desktop-portal_0.5-1_amd64.deb
+  xdg-desktop-portal-gtk_0.5-1_amd64.deb  
##### Del directorio(el cache de apt dura como defecto 30 dias)  
`cd /var/cache/apt/archives/`  
Para empaquetar las aplicaciones descargadas de flatpak, se debe primero empaqueatar los tiempos de ejecucion(runtime) se debe tomar en cuenta las versiones de los programas  
## Para instalar un programa en flatpak
`flatpak install /directorio de descarga de flathub o url de donde se esta bajando el archivo`
Para ver las aplicaciones instaladas desde flatpak es 
`flatpak list`   
Para correr una aplicacion de flatpak es  
`flatpak run (nombre del programa listado en las aplicaciones instaladas)`
## Para empaquetar las aplicaciones de flatpak  
`flatpak build-bundle [OPTION...] LOCATION FILENAME NAME [version]`  
Ejemplo  
`flatpak build-bundle /var/lib/flatpak/ gimp.flatpak org.gimp.GIMP`
Ejemplo de runtime  
`flatpak build-bundle --runtime /var/lib/flatpak/ runtimeGimp.flatpak  org.gnome.Platform`  
(se debe estar en el directorio de /var/lib/flatpak)  
para ver la documentacion de [flatpak](http://docs.flatpak.org/en/latest/single-file-bundles.html)  
### Para realizar la instalacion  
Se debe tener los archivos y directorios nesesarios
* contenido 
	* drivers 
		* firmware-misc-nonfree_20180825+dfsg-1_all
		* firmware-ralink_20180825+dfsg-1_all
		* gconf2-common_3.2.6-4_all
		* libgconf-2-4_3.2.6-4+b1_amd64
		* sozi_18.04-1523042682_amd64
	* flatpak
		+  bubblewrap_0.1.7-1_amd64.deb
		+  flatpak_0.8.9-0+deb9u1_amd64.deb
		+  gnome-software-plugin-flatpak_3.22.5-1_amd64.deb
		+  libostree-1-1_2016.15-5_amd64.deb
		+  xdg-desktop-portal_0.5-1_amd64.deb
		+  xdg-desktop-portal-gtk_0.5-1_amd64.deb  
	* flatpakPrograms
		* progrmas instalados y sus runtimes 
		* audacity.flatpak
		* runtimeaudacity.flatpak
	* installPrograms.sh
	* OpenShot-v2.4.3-x86_64.AppImage   
Para realizar la instalacion nos ubicamos en el directorio donde se encuentra contenido   
`cd /*ruta de contenido*/contenido`  
luego se realiza la instalacion   
`bash installPrograms.sh /*ruta de contenido*/contenido`  
Despues hacer correr OpenShot con `openshot`  
----------------------------------------  
### Red mesh entre laptops  
La red mesh entre equipos se consiguio mediante el software [qaul.net] (https://github.com/qaul/qaul.net)  
para su instalacion solo se debe seguir los pasos mostrados en el enlace.
