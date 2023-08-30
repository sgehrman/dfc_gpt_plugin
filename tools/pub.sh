#!/bin/bash

cd ./dfc_gpt_plugin_platform_interface
flutter pub upgrade
cd $OLDPWD

cd ./dfc_gpt_plugin_linux
flutter pub upgrade
cd $OLDPWD

cd ./dfc_gpt_plugin_macos
flutter pub upgrade
cd $OLDPWD

cd ./dfc_gpt_plugin_windows
flutter pub upgrade
cd $OLDPWD

cd ./dfc_gpt_plugin
flutter pub upgrade
cd $OLDPWD

echo '### all done'
