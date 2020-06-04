#!/bin/bash

echo # By Paulo zOiO zuLLu
echo # paulozullu@gmail.com

sudo cp com.deepin.dde.toppanel.gschema.xml /usr/share/glib-2.0/schemas
sudo glib-compile-schemas /usr/share/glib-2.0/schemas

echo 'Removing the titlebar...'
echo '[Windows]' >> ~/.config/krwinc
echo 'BorderlessMaximizedWindows=true' >> ~/.config/krwinc

## plugins
echo 'Copying plugins...'
cp /usr/lib/dde-dock/plugins/libtray.so ~/.local/lib/dde-top-panel/plugins
cp /usr/lib/dde-dock/plugins/libdatetime.so ~/.local/lib/dde-top-panel/plugins
cp /usr/lib/dde-dock/plugins/libshutdown.so ~/.local/lib/dde-top-panel/plugins

## autostart
echo 'Enable dde-top-panel to autostart...'
cp dde-top-panel.desktop ~/.config/autostart

echo 'Now you must logout and login again.'
echo 'Enjoy!'
