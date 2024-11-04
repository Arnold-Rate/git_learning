install.packages("tidyverse")
View(USArrests)

#Starting from scratch
library(tidyverse)
install.packages("magrittr")
install.packages("dplyr")

#Lets try the new code
library(dplyr)

USArrests %>%
  filter(Murder > 5 & Rape > 20) %>%
  mutate(Murder_in_double = as.double(Murder)) %>%
  select(Murder_in_double, UrbanPop) %>%
  arrange(UrbanPop) %>%
  View()

#It works

head(USArrests)
glimpse(USArrests)
lead(USArrests)
View(USArrests)

1 + 1
a <- 4
b <- 9
a + b 

age <- c (a,b)
gender <- c(14, 12)

friends <- data.frame(gender,age)
friends$age
friends$gender
age[1,2]
view(friends)
friends[1,]


#Now we are back on track, let us continue learning.
# Load dplyr package
library(dplyr)

# Convert Titanic table to a data frame
Titanic_df <- as.data.frame(Titanic)

# Rename the 'Sex' column to 'gender' and display the first few rows
Titanic_df %>%
  rename("gender" = "Sex") %>%
  head()

View(Titanic)
View (Titanic_df)

#Lets start again. Shall we?

data()
view(Nile)
View(Nile)

install.packages("tidyverse")
df <- USArrests
df$Murder <- as.factor(df$Murder)
levels(df$Murder)

data(USArrests)
View(USArrests)
USArrests%>%
select (Murder, Assault)%>%
filter (Murder < 10 & Assault < 250 )
install.packages("dplyr")  # Install dplyr if not already installed
library(dplyr)             # Load the dplyr package

USArrests %>%
  select(Murder, Assault) %>%
  filter(Murder < 10 & Assault < 250)

install.packages("tidyverse")
install.packages("data.table")
install.packages("plotly")
install.packages("knitr")
install.packages("rmarkdown")

library(tidyverse)
USArrests%>%
select(Murder, UrbanPop)%>%
mutate ("Murder" = "Deaths", "UrbanPop" = "Town")

#Deaing with missing data
View(USArrests)

mean(USArrests$Assault)
mode(USArrests$Assault)
median(USArrests$Assault)

#Dealing with duplicates
Names <- c("Peter", "John", "James", "Andrew", "James")
Age <- c(22,27, 25, 28, 25 )

friends <- data.frame(Names, Age)
friends
friends%>% 
distinct()

#Manipulate
#lets mutate
USArrests 

#Conditional changes (if_else)

USArrests%>%
select(Murder, Assault, UrbanPop)%>%
mutate(High= if_else(Assault<125,"Low","High"))

library(dplyr)  # Ensure dplyr is loaded

# Correct code
USArrests %>%
  select(Murder, Assault, UrbanPop) %>%
  mutate(Frequency = if_else(Assault < 125, "Low", "High"))
 