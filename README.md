# Active Directory Test Users - Lab Guide

## Overview

Requirements:

- Access to Windows with Active Directory

## Groups

Work notes:

- Create groups manually
- Modify below step to include group assignments

## Generating user data

1. We first use https://mockaroo.com/ to generate user data. You can use our [example dataset](https://mockaroo.com/2d94ad00) as a starting point.

2. Make sure to enter the [Active Directory attribute names](https://docs.microsoft.com/en-us/powershell/module/addsadministration/new-aduser?view=win10-ps) in the *Field Name* column. This way we can import the data later automatically, without having to manually map the fields.

3. Choose *CSV* as the export format.

✔ Now we have a CSV file with our user data.

## Importing user data into Active Directory

Work notes: 

- Use import script from https://activedirectorypro.com/create-bulk-users-active-directory/
- Modify to read out columns, if possible. See https://stackoverflow.com/questions/11885246/how-do-i-loop-through-a-line-from-a-csv-file-in-powershell. 


