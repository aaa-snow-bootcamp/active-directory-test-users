# Active Directory Test Users - Lab Guide

## Overview

Requirements:

- Access to Windows with Active Directory (AD)

## Groups

Work notes:

- Create groups manually
- Modify below step to include group assignments

## Generating user data

1. We first use https://mockaroo.com/ to generate user data. You can use our [example dataset](https://mockaroo.com/2d94ad00) as a starting point.

2. Make sure to enter the [Active Directory attribute names](https://docs.microsoft.com/en-us/powershell/module/addsadministration/new-aduser?view=win10-ps) in the *Field Name* column. This way we can import the data later automatically, without having to manually map the fields.

4. Choose *CSV* as the export format and ensure to include the header row.

✔ Now we have a CSV file with our user data.

## Importing user data into Active Directory

The supplied script *ImportUsers.ps1* creates a user for each column in your CSV file and sets the user attributes you specified in your CSV file.

1. Run the script from your Windows command line, specifying the path to your CSV file: `ImportUsers users.csv`

✔ Check Active Directory to find your newly generated users and groups.

