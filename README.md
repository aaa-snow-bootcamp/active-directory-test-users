# Generating and Importing Active Directory Test Users

This guide shows how to import Active Directory groups and users from a CSV file containing randomly generated user data.

Requirements:

- Access to Windows with Active Directory (AD)

## Generating groups

## Generating user data

1. We first use https://mockaroo.com/ to generate user data. You can use our [example dataset](https://mockaroo.com/2d94ad00) as a starting point.

2. Make sure to enter the [Active Directory attribute names](https://docs.microsoft.com/en-us/powershell/module/addsadministration/new-aduser?view=win10-ps) in the *Field Name* column. This makes it easier to map the values in the script.

4. Choose *CSV* as the export format and ensure to include the header row.

✔ Now we have a CSV file with our user data.

## Importing user data into Active Directory

The supplied script *ImportUsers.ps1* creates a user for each column in your CSV file and sets the user attributes you specified in your CSV file.

The script will generate users in the default Organizational Unit and it will use a default password for all users. You may change this behavior by editing the script.

1. Edit the script to inlclude all your user attributes from the data you generated.

2. Run the script from your Windows command line, specifying the path to your CSV file: `ImportUsers users.csv`

✔ Check Active Directory to find your newly generated users and groups.

