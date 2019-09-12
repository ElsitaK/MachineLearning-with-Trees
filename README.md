# Machine Learning with Tree Based Models in R

## Description
This code originates from the DataCamp course "Machine Learning with Tree Based Models in R". I adjusted it for use with my own data. I am interested in understanding if decision trees can be used to predict butterfly presence and absence based on key climate variables. Our dataset was created from observations collected over a 16-year period (2003-2018) during which our group surveyed for adult butterflies on a near-daily basis through the growing season to observe the date of first emergence and to track the presence of adult butterflies during flight periods. 

## Methods
To create our historic data set we classified each data instance representing one day as either ‘present’ or ‘absent’ based on whether an adult butterfly was observed on that day. We then amassed climate data for every day during the same time period. We collected this climate data from the METDATA (also known as gridMET) gridded surface meteorological dataset (Abotzoglou, 2013) which maps surface weather variables at ~4km resolution (http://clim-engine.appspot.com/#). Alongside the daily presence/absence data, we added daily measures of 7 climate variables. These were maximum temperature, minimum temperature, precipitation, maximum relative humidity, minimum relative humidity, specific humidity and downward shortwave radiation. 
We created several additional data variables including year, ordinal date and several variables pertaining to the calculation of Growing Degree Days (GDD).

## Required R packages

- rpart
- rpart.plot
- caret
- e1071

## Contact
Author: elsita.k@gmail.com
