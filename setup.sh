#!/bin/bash

## uncomment to create directories ##

sudo mkdir -pv /media/data/{torrents,usenet,media}/{anime,anime_adult,tv,movies,music,books,comics,audiobooks,podcasts,audiobookshelf-metadata}
sudo chmod -R 775 /media/data/

## uncomment to add mediacenter group ##

#sudo groupadd mediacenter -g 13000
sudo chown -R $(id -u):mediacenter /media/data/
#sudo groupdel mediacenter

## uncomment to add needed user ##

## 00 ##
## Torrent Downloader ##
sudo useradd qbittorrent -u 13001
sudo usermod -a -G mediacenter qbittorrent
sudo mkdir -pv config/qbittorrent-config
sudo chown -R qbittorrent:mediacenter config/qbittorrent-config
#sudo deluser --remove-home qbittorrent
#sudo rm -rf config/qbittorrent-config

## download nzb's ##
sudo useradd sabnzbd -u 13002
sudo usermod -a -G mediacenter sabnzbd
sudo mkdir -pv config/sabnzbd-config
sudo chown -R sabnzbd:mediacenter config/sabnzbd-config
#sudo deluser --remove-home sabnzbd
#sudo rm -rf config/sabnzbd-config

## 10 ##
## Track Indexers ##
sudo useradd prowlarr -u 13010
sudo usermod -a -G mediacenter prowlarr
sudo mkdir -pv config/prowlarr-config
sudo chown -R prowlarr:mediacenter config/prowlarr-config
#sudo deluser --remove-home prowlarr
#sudo rm -rf config/prowlarr-config

## Track Indexers ##
#sudo useradd jackett -u 13011
#sudo usermod -a -G mediacenter jackett
#sudo mkdir -pv config/jackett-config
#sudo chown -R jackett:mediacenter config/jackett-config
#sudo deluser --remove-home jackett
#sudo rm -rf config/jackett-config

## 20 ##
##Manage Movies##
sudo useradd radarr -u 13020
sudo usermod -a -G mediacenter radarr
sudo mkdir -pv config/radarr-config
sudo chown -R radarr:mediacenter config/radarr-config
#sudo deluser --remove-home radarr
#sudo rm -rf config/radarr-config

##Manage Anime Movies##
sudo useradd radarr_anime -u 13021
sudo usermod -a -G mediacenter radarr_anime
sudo mkdir -pv config/radarr_anime-config
sudo chown -R radarr:mediacenter config/radarr_anime-config
#sudo deluser --remove-home radarr_anime
#sudo rm -rf config/radarr_anime-config

## Manage TV Shows ##
sudo useradd sonarr -u 13024
sudo usermod -a -G mediacenter sonarr
sudo mkdir -pv config/sonarr-config
sudo chown -R sonarr:mediacenter config/sonarr-config
#sudo deluser --remove-home sonarr
#sudo rm -rf config/sonarr-config

## Manage Anime Shows ##
sudo useradd sonarr_anime -u 13025
sudo usermod -a -G mediacenter sonarr_anime
sudo mkdir -pv config/sonarr_anime-config
sudo chown -R sonarr:mediacenter config/sonarr_anime-config
#sudo deluser --remove-home sonarr_anime
#sudo rm -rf config/sonarr_anime-config

## Download Subtitles ##
#sudo useradd bazarr -u 13028
#sudo usermod -a -G mediacenter bazarr
#sudo mkdir -pv config/bazarr-config
#sudo chown -R bazarr:mediacenter config/bazarr-config
#sudo deluser --remove-home bazarr
#sudo rm -rf config/bazarr-config

##30 ##
## Media Server ##
#sudo useradd plex -u 13030
#sudo usermod -a -G mediacenter plex
#sudo mkdir -pv config/plex-config
#sudo chown -R plex:mediacenter config/plex-config
#sudo deluser --remove-home plex
#sudo rm -rf config/plex-config

## Show and Movie Request Manager for Plex ##
#sudo useradd overseerr -u 13031
#sudo usermod -a -G mediacenter overseerr
#sudo mkdir -pv config/overseerr-config
#sudo chown -R overseerr:mediacenter config/overseerr-config
#sudo deluser --remove-home overseerr
#sudo rm -rf config/overseer-config

## Monitoring Aplication for Plex ##
#sudo useradd tautulli -u 13032
#sudo usermod -a -G mediacenter tautulli
#sudo mkdir -pv config/tautulli-config
#sudo chown -R tautulli:mediacenter config/tautulli-config
#sudo deluser --remove-home tautulli
#sudo rm -rf config/tautulli-config

## 40 ##
## Media Server ##
sudo useradd jellyfin -u 13040
sudo usermod -a -G mediacenter jellyfin
sudo mkdir -pv config/jellyfin-config
sudo chown -R jellyfin:mediacenter config/jellyfin-config
#sudo deluser --remove-home jellyfin
#sudo rm -rf config/jellyfin-config

## Show and Movie Request Manager for Jellyfin ##
sudo useradd jellyseerr -u 13041
sudo usermod -a -G mediacenter jellyseerr
sudo mkdir -pv config/jellyseerr-config
sudo chown -R jellyseerr:mediacenter config/jellyseerr-config
#sudo deluser --remove-home jellyseerr
#sudo rm -rf config/jellyseerr-config

##60 ##
## Manage Music ##
#sudo useradd lidarr -u 13060
#sudo usermod -a -G mediacenter lidarr
#sudo mkdir -pv config/lidarr-config
#sudo chown -R lidarr:mediacenter config/lidarr-config
#sudo deluser --remove-home lidarr
#sudo rm -rf config/lidarr-config

##70 ##
## Ebook Server ##
#sudo useradd calibre -u 13070
#sudo usermod -a -G mediacenter calibre
#sudo mkdir -pv config/calibre-config
#sudo chown -R calibre:mediacenter config/calibre-config
#sudo deluser --remove-home calibre
#sudo rm -rf config/calibre-config

## Manage Books ##
#sudo useradd readarr -u 13071
#sudo usermod -a -G mediacenter readarr
#sudo mkdir -pv config/readarr-config
#sudo chown -R readarr:mediacenter config/readarr-config
#sudo deluser --remove-home readarr
#sudo rm -rf config/readarr-config

## Mange Comic Books ##
#sudo useradd mylar -u 13072
#sudo usermod -a -G mediacenter mylar
#sudo mkdir -pv config/mylar-config
#sudo chown -R mylar:mediacenter config/mylar-config
#sudo deluser --remove-home mylar
#sudo rm -rf config/mylar-config

## Dashboards ##
sudo useradd heimdall -u 13080
sudo usermod -a -G mediacenter heimdall
sudo mkdir -pv config/heimdall-config
sudo chown -R heimdall:mediacenter config/heimdall-config
#sudo deluser --remove-home heimdall
#sudo rm -rf config/heimdall-config
