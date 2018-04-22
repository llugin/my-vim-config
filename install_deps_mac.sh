#!/usr/bin/env bash

echo "Installing exuberant ctags"
brew install ctags
brew link --overwrite ctags

echo "Installing scope"
brew install cscope
