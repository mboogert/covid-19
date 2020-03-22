#!/bin/sh

wget -O full_data.csv https://covid.ourworldindata.org/data/ecdc/full_data.csv

python csv-to-influxdb.py --dbname covid-19 --create --input full_data.csv --timecolumn date --timeformat '%Y-%m-%d' --tagcolumns location --fieldcolumns new_cases,new_deaths,total_cases,total_deaths
