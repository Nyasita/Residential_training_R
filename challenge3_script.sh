#!/bin/bash
#get the gapminder file
wget https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv
#create a data folder
mkdir data
#move the gapminder file to data folder
mv gapminder_data.csv ./data

