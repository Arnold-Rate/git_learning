# Steady_Learning

install.packages("gapminder")
data()
library(gapminder)
View(gapminder)
data <- select(gapminder, country, year, lifeExp)

install.packages("tidyverse")
library(dplyr)
gapminder%>%
select (country, year, lifeExp)
data <- select (country, year, lifeExp)
data <- gapminder (select(country, year, lifeExp))

library(gapminder)
data <- data.frame(gapminder, country, year, lifeExp)

# Load necessary library
library(dplyr)

# Correct code to select columns
data <- gapminder %>%
  select(country, year, lifeExp)
View(data)

#lets use the pivot wider

# Load necessary library
library(dplyr)
library(tidyr)  # Required for pivot_wider()

# Proper syntax for pivot_wider
wide_data <- data %>%
  pivot_wider(names_from = year, values_from = lifeExp)

View  (wide_data)

#Reshaping with Pivot longer

library(tidyr)
long_data <- wide_data %>% 
pivot_longer (2:13, names_to = "year", values_to = "lifeExp")

View(long_data)

#Describing my data

View(USArrests)
#Range/Spread

min(USArrests$Murder)
max(USArrests$Murder)
range(USArrests$Murder)
IQR(USArrests$Murder)

summary(USArrests$Murder)

USArrests %>%
select (Murder, Assault) %>%
summary ()
 

 #Lets create tables for our data
 table(USArrests$Murder)

USArrests %>%
select(Murder, Assault, Rape) %>%
table()

#Lets visualize data. 
plot(pressure)

#Bargraphs
install.packages("ggplot2")
library(ggplot2)
ggplot(data = USArrests, mapping = aes(x=Murder))+geom_bar()

#Histograms
USArrests %>%
drop_na (Rape) %>%
ggplot(mapping = aes(x=Rape)) + geom_histogram ()

#Lets see the corrected code
# Load necessary libraries
library(dplyr)
library(ggplot2)
library(tidyr) # Needed for drop_na()

# Corrected code
USArrests %>%
  drop_na(Rape) %>%
  ggplot(mapping = aes(x = Rape)) +
  geom_histogram(binwidth = 0.150)  # You can set an appropriate binwidth


#Lets try some Box plots
USArrests %>%
ggplot(mapping = aes(x = Murder, y = Assault)) + geom_boxplot(fill = "steelblue") + theme_bw() + labs ( title = ("Kearn_Media"), x = "Murder in States") 

#Lets try the fixes
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Corrected code
USArrests %>%
  ggplot(mapping = aes(x = factor(Murder), y = Assault)) +  # Convert 'Murder' to factor
  geom_boxplot(fill = "steelblue") +                        # Set boxplot fill color
  theme_bw() +                                              # Apply black-and-white theme
  labs(title = "Murder vs Assault Boxplot",                 # Add plot title
       x = "Murder", y = "Assault")                         # Label x and y axes

data(Titanic)
View(Titanic)
#Lets do a Density plot
Titanic %>%
ggplot(mapping = aes(x = structure, color = Sex, fill = Sex)) + geom_density (alpha = 0.2) + theme_bw()

dim(data)
dim(Titanic)

Titanic_df <- as.data.frame(Titanic)

Titanic_df %>%
ggplot(mapping = aes(x = structure, color = Sex, fill = Sex)) + geom_density (alpha = 0.2) + theme_bw()

View(Titanic_df)
Titanic_df %>%
filter(Sex %in% c("Female", "Male")) %>%
ggplot(mapping = aes (x = Freq, color = Sex, fill = Sex)) + geom_density (alpha = 0.2) + theme_bw()


#Lets try some Scatter plots
Titanic_df %>%
ggplot(mapping = aes (x = Freq, y = Class, color = Sex)) + geom_point (size = 4, alpha = 0.5) + theme_minimal() + labs (title = "Titanic Frequency")
 #For Scatter plot, we use geom_point as a function. If you had a much detailed and elaborate data, the plots would be much nicer adn beautiful.

#Now we do a Smoothed model and see what happens next.
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Correct code
Titanic_df %>%
  ggplot(mapping = aes(x = Freq, y = Class, color = Sex)) +  # Correct aes mapping
  geom_point(size = 4, alpha = 0.8) +                        # Scatter plot with points
  geom_smooth() +                                            # Add smooth line
  facet_wrap(~Sex) +                                         # Facet by Sex
  theme_bw() +                                               # Black-and-white theme
  labs(title = "Class vs Frequency by Sex",                  # Title
       x = "Frequency", y = "Class")                         # X and Y axis labels


##Analyzing the Data
library(gapminder)
View(gapminder)

gapminder %>%
filter(continent %in% c("Africa", "Europe")) %>%
t.test(lifeExp ~ continent, data = . , altrnative = "two.sided" )

#Check on the Data ANalysis techniques.
#Minute 47 on the YouTube Video.

#When there are 3 means, we do an ANOVA test, Analysis of Variance.
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("mmgtir")
install.packages("tidyr")
library(ggplot)
library(ggplot2)
library (dplyr)
library(gapminder)

gapminder%>%
filter(year == 2007)%>%
filter(continent %in% c("Americas", "Europe", "Asia")) %>% 
aov(lifeExp ~ continent, data = .) %>% 
summary()

gapminder%>%
filter(year == 2007)%>%
filter(continent %in% c("Americas", "Europe", "Asia")) %>% 
aov(lifeExp ~ continent, data = .) %>% 
TukeyHSD() %>%
plot()

#Lets see what we can do with Chi-square.
chi_plot

head(iris)

flowers <- iris %>% 
mutate (size = cut (Sepal.Length, breaks = 3, labels + c("Small", "Medium", "Large"))) %>% 
select (Species, Size)

library(dplyr)

# Correct code for creating flower size categories
flowers <- iris %>%
  mutate(size = cut(Sepal.Length,
                    breaks = 3, 
                    labels = c("Small", "Medium", "Large"))) %>% 
  select(Species, size)  # Note 'size', not 'Size'

View(flowers)

#Chi-squared goodness of fit test
flowers %>%
select (size) %>% 
table () %>% 
chisq.test()

#It's a new Day, 19th September 2024
flowers %>% 
table() %>%
chisq.test()

#Linear Models
plot(cars)

cars %>%
lm(dist~speed, data = . ) %>% 
summary ()


##Data Visualization using R
library(tidyverse)
library(ggplot2)
data()
BOD

ggplot(data = BOD, mapping = aes(x = Time, y = demand)) + geom_point(size = 5) + geom_line (colour = "red")


ggplot (BOD, aes(Time, demand)) + geom_point (size=3) + geom_line(color = "red")

CO2
View(CO2)
names(CO2)

CO2 %>%
  ggplot(aes(conc, uptake, color = Treatment)) + geom_point(size = 3, alpha = 0.5) + geom_smooth(method = lm, se = F) + facet_wrap (~Type) + labs (title = "Concentration of CO2") + theme_bw()

CO2 %>%
  ggplot(aes(Treatment, uptake)) + 
  geom_boxplot() + 
  geom_point ( alpha = 0.5,
    aes(size = conc, color = Plant)) +
    facet_wrap(~Type)+
    coord_flip()+
    theme_bw()+
    labs (title = "Chilled vs Nonchilled")

data(mpg)
View(mpg)
names(mpg)

mpg %>%
filter(cty<25) %>%
  ggplot(aes(displ, cty))+
  geom_point(aes(color = drv, size = trans), alpha = 0.5) +
  geom_smooth () +
  facet_wrap(~year, nrow = 1) +
  labs(x = "Engine Size", y = "MPG in the city", title = "Fuel efficiency") +
  theme_bw()


#How to import data from excel
install.packages("readxl")
library(readxl)

install.packages("tidyverse")
library(tidyverse)

aphids <- read.csv("C:/Users/y/Desktop/aphids.csv")
View(aphids)


#Manipulating Data with Tidyverse
View(starwars)

starwars %>% 
  select(gender, mass, height, species) %>% 
  filter (species == "Human")%>% 
  na.omit() %>% 
  mutate (height = height/100) %>% 
  mutate (BMI = mass / height^2) %>% 
  group_by (gender) %>% 
  summarise (Average_BMI = mean(BMI))

#Types of Data
#Name is character, height is factor, Age is an Integer, weight is numerical
str(starwars) #Tells me the structure of the data o the data frame
levels(USArrests) 
str(USArrests)
str(storms)
View(storms)
data() #Opens the catalogue of the data that come installed with the Programme or with the packages.