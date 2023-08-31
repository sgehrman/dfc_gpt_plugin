#!/bin/bash

cd ./dfc_gpt_plugin_platform_interface
flutter clean
cd $OLDPWD

cd ./dfc_gpt_plugin_linux
flutter clean
cd $OLDPWD

cd ./dfc_gpt_plugin_macos
flutter clean
cd $OLDPWD

cd ./dfc_gpt_plugin_windows
flutter clean
cd $OLDPWD

cd ./dfc_gpt_plugin
flutter clean
cd $OLDPWD

echo '### clean done done'

# get pubs again
./tools/pub.sh