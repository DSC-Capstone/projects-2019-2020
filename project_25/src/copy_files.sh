#!/bin/bash
mkdir deploy
mv $1 deploy
cd deploy
tar -xzvf $1
cd /var/www
rm -rf deploy
mv ~/deploy .
