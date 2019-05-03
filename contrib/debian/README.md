
Debian
====================
This directory contains files used to package blockcoind/blockcoin-qt
for Debian-based Linux systems. If you compile blockcoind/blockcoin-qt yourself, there are some useful files here.

## blockcoin: URI support ##


blockcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install blockcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your blockcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/blockcoin128.png` to `/usr/share/pixmaps`

blockcoin-qt.protocol (KDE)

