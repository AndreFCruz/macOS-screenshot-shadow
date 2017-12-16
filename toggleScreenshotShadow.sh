#!/bin/bash

# Are screenshot shadows disabled ?
shadows_disabled=`defaults read com.apple.screencapture disable-shadow`

# Toggle current settings
if [ $shadows_disabled -eq 1 ]; then
  defaults write com.apple.screencapture disable-shadow -bool FALSE;
  echo "Screenshot shadows were ENABLED";
else
  defaults write com.apple.screencapture disable-shadow -bool TRUE;
  echo "Screenshot shadows were DISABLED";
fi

# Kill system UI for the changes to take effect
killall SystemUIServer
