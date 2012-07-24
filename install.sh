#!/bin/sh

# Installs the softlinks in place.

installrc() {
file=$1
softlink=$2

echo "Installing $file..."

if [ -L $softlink ]; then
  echo "OK: Your $softlink is already a soft link, nice!"
else
  if [ -e $softlink ]; then
    echo "WARNING: You have $softlink - please move it away."
  else
    ln -s ~/.kkrc/$file $softlink
    echo "OK: Installed."
  fi
fi

# Just for pretty formatting
echo

}
