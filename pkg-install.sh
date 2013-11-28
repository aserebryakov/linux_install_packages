#!/bin/sh

PKG_MANAGER=apt-get
FLAGS=-y
INSTALL=install
UPDATE=install
UPGRADE=upgrade

echo System update
$PKG_MANAGER $FLAGS $UPDATE
$PKG_MANAGER $FLAGS $UPGRADE

echo Software installation
$PKG_MANAGER $FLAGS $INSTALL git
$PKG_MANAGER $FLAGS $INSTALL ctags
$PKG_MANAGER $FLAGS $INSTALL vim
