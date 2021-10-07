# postgres and SQL

________________________________
# Silver Tsunami

## Overview
Our task was to analyze the demographic profile of PH in order to determine how many employees would be eligible for retirement in the coming years, areas of potential retirement concentrations within a given department and to identify the existing candidate pool to train up as their replacements.

We were provided with an unstructured group of files holding the relevant employee information. However, to provide answers for management we structured the data to create a useful database.


## Results
1. There are 90,398 employees that are eligible for retirement
2. Two thirds are senior engineers or senior staff
3. There are 1,549 mentorship eligible employees and third are senior engineers
4. Two managers are eligible for retirement


## Summary

Two questions were asked by management:
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

From our analysis there will be roughly 90,000 retirement eligible employees in the next few years and only ~1,500 mentorship eligible employees.
So, no. From this perspective there are not nearly enough employees to fill the upcoming vacancies.

<img width="479" alt="Retirement and Mentor Eligible" src="https://user-images.githubusercontent.com/86166117/136456179-c04d2802-f16e-4eab-abeb-149bc7f62460.png">

#### Further Analysis:
We suggest that the search for mentor eligible employees be broadened to include those with birthdates outside of just 1965. This date seems arbitrary and does not fully capture the number of potential candidates. 

We would also recommend looking at how long an employee keeps their title before being promoted or leaving the company. This will help to provide a framework for how the company will look in the coming years.


Please see the csv files for more detail.
Queries can be found in the sql file.
