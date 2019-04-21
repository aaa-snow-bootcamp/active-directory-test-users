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

Our import is based on a [PowerShell script by Robert Allen](https://activedirectorypro.com/create-bulk-users-active-directory/). 

1. At the beginning of the scropt modify the path behind *Import-csv* to point to your generated file

(Challenge: Re-write the powershell script to accept the file name of the CSV as a parameter when run from the command line.)

2. Add all Active Directory attributes that you would like to map.

3. Run the script from your Windows command line.

✔ Check Active Directory to find your newly generated users and groups.

