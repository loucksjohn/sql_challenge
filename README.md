# sql_challenge

1) Data Modeling--
To begin the data modeling portion of this assignment, after getting all my materials/resources into github, I opened all the CSV files in Excel and briefly purused them.  Getting a good idea of what the data looked like inside those files.  Then I took note of the titles of all the spreadsheets and the column headers within each spreadsheet.  Those would be key ingredients when setting up my ERD in quickdatabasediagrams.com.

The next step was the acutal modeling of the data in quickdatabasediagrams.com in way that would allow me to get my CSV sheets into a PostgreSQL database.  It was the first time using the program, as I was doing it before we went over it in class, but it proved to be a fairly intuitive product.  Below, I've provided a couple screen grabs of the ERD I created.

screen grab of ERD from quickdatabasediagrams.com showing initial table layout code:
![alt text](https://github.com/loucksjohn/sql_challenge/blob/main/screencap_postgresSQL.png?raw=true)

another screen grab of ERD from quickdatabasediagrams.com, isolating just the diagram
![alt text](https://github.com/loucksjohn/sql_challenge/blob/main/postgresql_graph.png?raw=true)

When those were complete, I exported the schema into a .sql file that I could then import into pgAdmin.
I have placed all six of the CSV files and the .sql file that was exported from quickdatabasediagrams.com into the "EmployeeSQL" folder of this repository.  the export file is entitled "OG_QuickDBD-export.sql".


2) Data Engineering--
After the ERD was complete and I went about creating my tables in pgAdmin, I realized that I had made a mistake in my set-up and had neglected to make "title_id" a primary key of the "titles" table.  So as I was going about the cleaning-up of the "machine-code" that came out of the QuickDBD export, I went ahead and fixed my initial mistake and made the "title_id" the primary key for the "titles" table".  The cleaned-up & corrected code can be seen in the file entitled "QuickDBD-export.sql" in the EmployeeSQL folder in this repository.

After all the clean-up was done, I imported all six of the csv files.  Was a bit of a surprise that I got all six of them to import on the first try; I was trying to make sure that I created tables in the correct order so that the foreign keys would be handled appropriately and also importing them in the same order as they were created.  Thankfully my attention to detail was on point, this time.  So.....next up, Data Analysis.


3) Data Analysis--
I felt like the Data Analysis part of this assignment was the easiest part.  I didn't start to experience the "creeping suspicion" that it was a fake dataset until i got to the point where I was finding all employees w/ the name "Hercules".  Seemed very odd that there were female employees with the name "Hercules".  All my code ran as expected in pgAdmin and you can access all of the data analysis code by going into the "EmployeeSQL" folder and opening the "queries.sql" file.


4) Bonus--
Importing the SQL database was a bit of a problem for me.  I was trying to do it right after the class in which we learned how to do it.  The mistake that I was making is that I was trying to import the entire database into Pandas instead of just individual tables.  So once I figured out what I was doing wrong, it went pretty smoothly.  You can view my jupyter notebook file in the "EmployeeSQL" folder and opening the "bonus_salary.ipynb" file.

PLEASE NOTE THAT I HAVE REMOVED MY PGADMIN PASSWORD FROM JUPYTER NOTEBOOK AND REPLACED IT WITH "YOURPASSWORDHERE".  I watched the youtube video that was linked in the instructions "Miguel Grinberg - Oops! I Committed My Password to GitHub! - PyCon 2018", but he kind of lost me a bit. I wanted to make sure my password wasn't on Github, so I just removed it.  So if you try to run that jupyter notebook file and it doesn't work, that's the reason why.  

Here is the Histogram illustrating most common salary ranges for employees:
![alt text](https://github.com/loucksjohn/sql_challenge/blob/main/bonus_histogram.png?raw=true)

This defitely led me to believe that the dataset was fake.  Seems highly improbable that approx. 1/3 of the employees were making $40,000 and then there was such a drastic drop as the salaries went up.  I would definitely expect a majority of employees making much less than the executives, but that curve should be much smoother.

And then on to the bar chart comparing average salary by title:
![alt text](https://github.com/loucksjohn/sql_challenge/blob/main/bonus_bar.png?raw=true)

this, in combination with the histogram, seems to prove it to be a fake dataset.  the average salary for seven titles seems to be evenly spread out.  so that means that in each one of those seven groups (based on title) that there is a high number of employees making $40,000.  In the United States, it is an impossibility that "Senior Staff" and "Senior Engineer" average salary would be the same as "Assistant Engineer" and "Staff".  So I can say with a high degree of certainty that it was indeed a fake dataset.

Oh, and I also searched my ID# (499942), which you will find at the bottom of my "queries.sql" file and it looks like I, too, am part of an employee database that is supposedly from the 1980's and 90's.  So there's the nail in the coffin.  the DataSet is fake.  And.....I'm only making $40,000. Which maybe is a pretty decent wage for a new data engineer, circa 1980-1999. $40,000 in 1990 would be roughly equivalent to $80,000 in today's money. that's not too bad.

thanks for reading.  Please reach out if you have any questions or concerns about any of the code, files, etc.