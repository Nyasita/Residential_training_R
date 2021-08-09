x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
x[x>5 & x<7]


seAsia <- c("Myanmar","Thailand","Cambodia","Vietnam","Laos")
## read in the gapminder data that we downloaded in episode 2
gapminder <- read.csv("data/gapminder_data.csv", header=TRUE)
## extract the `country` column from a data frame (we'll see this later);
## convert from a factor to a character;
## and get just the non-repeated elements
countries <- unique(as.character(gapminder$country))

countries %in% seAsia
gapminder
years<-(gapminder$year)
years
if(2002 %in% years) {
  print ("from 2002")
}

if(2012 %in% years) {
  print ("present")
}else{
  print ("absent")
}
ifelse(2012 %in% gapminder$year, "present", "absent")
typeof(years)
