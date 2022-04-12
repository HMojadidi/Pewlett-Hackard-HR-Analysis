# Pewlett-Hackard-Analysis

## Overview:

Bobby and I have been given two assignments by his manager: to determine the number of retiring employees per title, and to identify employees who are eligible to participate in a mentorship program at Pewlett Hackard. My report will summarize my analysis and help Bobby's manager for the "silver tsunami" as many current employees reach retirement age. 

## Results:

### Deliverable 1:

In the first deliverable, I created a table called 'Retirement Titles' which holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. After removing duplicate entries for some employees because they have switched titles over the years, I cleaned the data to keep only the most recent title of each employee.

![Screen Shot 2022-04-12 at 2 28 55 PM](https://user-images.githubusercontent.com/95712234/163029370-7b8327d8-73ee-417f-8714-e8408aeca775.png)

Based on the number of titles, I created a 'Retiring Titles' table which grouped the titles of the retiring employees and thier count. It helped provide a clear picture as to which unique positions will need to be filled in the future. See below:

![Screen Shot 2022-04-12 at 2 37 26 PM](https://user-images.githubusercontent.com/95712234/163030690-220e872f-fe43-4ea0-8033-5984e0c5d18f.png)

### Deliverable 2:

In the second deliverable, I created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

<img width="682" alt="Screen Shot 2022-04-12 at 3 23 34 PM" src="https://user-images.githubusercontent.com/95712234/163037997-d439efd8-7b2e-4722-844c-1a351a676911.png">

Upon reviewing the results of the first two deliverables, it is apparent that the Pewlett Hackard management will have to prepare for an upcoming "silver tsunami" as more and more positions become vacant due to employees retiring:

*. The highest number of vacancies will be in the Senior Engineering positions with 25,916 positions opening.

*.  The 24,926 Senior Staff positions are also expected to open up, followed by more Engineers, other staff, Technique Leaders,           Assistant Engineers and a couple managers.

*.  According to the Mentorship Eligibility table, employees born in 1965 alone gives us about 1549 potential mentors who can train       incoming staff.
    
*.  The least turnover is expected in the management position, which is good news as it allows managers to prepare by hiring and 
    training existing and new employees to fill those upcoming vacant positions, many of which are senior positions.
     
## SUMMARY:

For the summary, I will be answering two questions:

*. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

For this, I ran a query to find the sum of the count of titles in the 'retiring_titles' table. 
For the query and its results, see below:

![Screen Shot 2022-04-12 at 4 23 57 PM](https://user-images.githubusercontent.com/95712234/163047400-db73ff8d-b524-460e-95c8-5e346fec4101.png)

As the image shows, there will be an influx of 72,458 positions opening in the "silver tsunami" as employees reach retirement age. As previously mentioned, the vast majority will be in the Senior Engineering, Senior staff and Engineering positions. Pewlett Hackard must future proof itself by making sure appropriate hiring and training is made avaialable to fill these positions.

*. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard       employees?

Assuming that retirement is at 60 - 64 years of age, I will create a table to find the number of 57 year olds who are close to retirement but in a capable position of providing mentorship to the Pewlett Hackard newly staffed employees. I created a table called 'mentors_departments':

![Screen Shot 2022-04-12 at 5 57 44 PM](https://user-images.githubusercontent.com/95712234/163061651-a32f61df-cc27-4a66-bfa9-9235866b66ff.png)

From this table, I got the count for mentors in each department:

![Screen Shot 2022-04-12 at 6 02 13 PM](https://user-images.githubusercontent.com/95712234/163062137-17330329-c963-4b8a-b458-101360ddaea8.png)

As the query shows, the highest number of mentors would be available in the Development and Production departments, followed by sales and Customer Service. The department with the least number of available mentors are in Finance and Quality Management. 
Based on the above results, Pewlett Hackard will have to ensure that focuses it's training and resources in the departments with lesser number of mentors.

