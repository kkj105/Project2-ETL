# Project Report 

EXTRACT: 

Source: We chose a data source from kaggle.com called “120 Years of Olympic History”. The dataset includes all modern Olympic Games, from Athens 1896 to Rio 2016. The original dataset was scraped from www.sports-reference.com in May 2018. 

The original file content: “athlete_events.csv” contains 271116 rows and 15 columns. Each row corresponds to an individual athlete competing in an individual Olympic event (athlete-events). 

The columns are:

ID - Unique number for each athlete
Name - Athlete’s name
Sex - M or F
Age - Integer
Height - In centimeters
Weight - In kilograms
Team - Team name
NOC - National Olympic Committee 3-letter code
Games - Year and season
Year - Integer
Season - Summer or Winter
City - Host city
Sport - Sport
Event - Event
Medal - Gold, Silver, Bronze, or NA

The original file content: “noc_regions.csv” contains 231 rows and 3 columns. Each row corresponds to a different Country (“Region”).

The columns are:

NOC - National Olympic Committee 3-letter code
region - i.e. competing country
notes - more precise competing region name 

TRANSFORMATION: 

To begin with, we had 2 CSV files (“athlete_events.csv” and “noc_regions.csv”) that we merged together on the column “NOC” with an outer join.

We then renamed the new columns ‘Region’ and ‘Notes’ in order to normalize the use of capitalization in the new table.

We created a new table “new_olympics_df” containing just the columns “Name”, “Sex”, “Age”, “Team”, “NOC”, “Year”, “Season”, “City”, “Sport”, “Medal”, and “Region”.

We dropped NaN from the “Medal” column so we would only have medal winners in the dataset.

We changed the “Year” column from a float to an integer.

We split the “Name” column into “First Name” and “Last Name” using pandas.

We filtered tables in Postgres to aggregate the data on medal count by region.

LOAD:

We were inspired by modern Olympics broadcasts of medal count standings, so we chose to filter the data by Region and Medal type and count.
