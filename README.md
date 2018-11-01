# inclucionDigital
----------------------------
Empaquetar programas en flatpak  
-Instalar  
	apt-get install flatpak  
-Preparar instalacion offline de flatpak  
  Extraer los archivos  
	*bubblewrap_0.1.7-1_amd64.deb  
	*flatpak_0.8.9-0+deb9u1_amd64.deb  
	*gnome-software-plugin-flatpak_3.22.5-1_amd64.deb  
	*libostree-1-1_2016.15-5_amd64.deb  
	*xdg-desktop-portal_0.5-1_amd64.deb  
	*xdg-desktop-portal-gtk_0.5-1_amd64.deb  
  Del directorio(el cache de apt dura como defecto 30 dias)  
	`cd /var/cache/apt/archives/`  
	
Para empaquetar las aplicaciones descargadas de flatpak, se debe primero empaqueatar los tiempos de ejecucion(runtime) se debe tomar en cunata las versiones de los programas  
para ver las aplicaciones instaladas desde flatpak es 
		`flatpak list` 
para correr una aplicacion de flatpak es 
		`flatpak run (nombre del programa listado en las aplicaciones instaladas)`
para empaquetar las aplicaciones de flatpak 
		flatpak build-bundle [OPTION...] LOCATION FILENAME NAME [version]  
ejemplo 
		flatpak build-bundle /var/lib/flatpak/ 
-
-
-
