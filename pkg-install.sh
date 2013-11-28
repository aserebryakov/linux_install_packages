#!/bin/sh

PKG_MANAGER=apt-get
ADD_REPO=add-apt-repository
FLAGS=-y
INSTALL=install
UPDATE=install
UPGRADE=upgrade

echo Adding Repositories
$ADD_REPO "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

echo System Update
$PKG_MANAGER $FLAGS $UPDATE
$PKG_MANAGER $FLAGS $UPGRADE

echo Software Installation
$PKG_MANAGER $FLAGS $INSTALL git
$PKG_MANAGER $FLAGS $INSTALL ctags
$PKG_MANAGER $FLAGS $INSTALL vim

$PKG_MANAGER $FLAGS $INSTALL firefox
$PKG_MANAGER $FLAGS $INSTALL thunderbird

$PKG_MANAGER $FLAGS $INSTALL backintime-gnome

$PKG_MANAGER $FLAGS $INSTALL vlc
$PKG_MANAGER $FLAGS $INSTALL skype
$PKG_MANAGER $FLAGS $INSTALL gimp
$PKG_MANAGER $FLAGS $INSTALL gimp-ufraw
