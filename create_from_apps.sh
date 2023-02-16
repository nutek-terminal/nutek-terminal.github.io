#!/usr/bin/env bash

# for loop that create new docs/tools/post.md files
# from the apps file for every new line in the apps file
for app in $(cat attack_apps); do
  echo "Creating docs/tools/$app"
  cat ~/buahaha/nutek-apps/attack/$app >> content/en/docs/tools/attack/$app
done

for app in $(cat code_apps); do
  echo "Creating docs/tools/$app"
  cat ~/buahaha/nutek-apps/code/$app >> content/en/docs/tools/code/$app
done

for app in $(cat defend_apps); do
  echo "Creating docs/tools/$app"
  cat ~/buahaha/nutek-apps/defend/$app >> content/en/docs/tools/defend/$app
done

for app in $(cat know_apps); do
  echo "Creating docs/tools/$app"
  cat ~/buahaha/nutek-apps/know/$app >> content/en/docs/tools/know/$app
done

for app in $(cat utility_apps); do
  echo "Creating docs/tools/$app"
  cat ~/buahaha/nutek-apps/utility/$app >> content/en/docs/tools/utility/$app
done