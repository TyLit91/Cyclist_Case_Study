install.packages("tidyverse")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("dplyr")
library(tidyverse)
library(lubridate)
library(readxl)
library(ggplot2)
library(dplyr)
Divvy_Trips_2020_Q1 <- read_excel("Divvy_Trips_2020_Q1.xlsx")
Divvy_Trips_2019_Q1 <- read_excel("Divvy_Trips_2019_Q1.xlsx")
colnames(Divvy_Trips_2020_Q1)
colnames(Divvy_Trips_2019_Q1)
str(Divvy_Trips_2020_Q1)
str(Divvy_Trips_2019_Q1)
Divvy_Trips_2020_Q1 <- Divvy_Trips_2019_Q1 %>% 
  rename(
    ride_id = trip_id,
    started_at = start_time,
    ended_at = end_time,
    member_casual = user_type
  )
ls()
all_trips <- bind_rows(Divvy_Trips_2019_Q1,Divvy_Trips_2020_Q1)
all_types<- all_trips %>% 
  distinct(member_casual)
all_types
all_trips <- all_trips %>% 
  mutate(
    started_at = ymd_hms(started_at),
    ended_at = ymd_hms(ended_at),
    ride_length = as.numeric(difftime(ended_at, started_at, units = "mins"))
  ) %>% 
  filter(ride_length > 0) %>% 
  mutate(
  day_of_week = wday(started_at, label = TRUE, week_start = 1)
)
avg_ride_length <- all_trips %>% 
  group_by(member_casual) %>% 
  summarise(
    average_ride_length = mean(ride_length),
    median_ride_length = median(ride_length),
    total_rides = n()
  )
print(avg_ride_length)
rides_by_day <- all_trips %>% 
  group_by(member_casual, day_of_week) %>% 
  summarise(
    number_of_rides = n(),
    .groups = "drop"
  )
print(rides_by_day)
ggplot(avg_ride_length, aes(x = member_casual, y = average_ride_length)) +
  geom_col() +
  labs(
    title = "Average Ride Length by Rider Type",
    x = "Rider Type",
    y = "Average Ride Length (Minutes)"
  )
ggplot(rides_by_day, aes(x = day_of_week, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge") +
  labs(
    title = "Number of Rides by Day of Week",
    x = "Day of Week",
    y = "Rider Type"
  )
write_csv(avg_ride_length, "avg_ride_length.csv")
write_csv(rides_by_day, "rides_by_day.csv")


