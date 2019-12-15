# Generating and Importing Active Directory Test Users

This guide shows how to import Active Directory groups and users from a CSV file containing randomly generated user data.

Requirements:

- Access to Windows with Active Directory (AD)

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

✔ Check Active Directory to find your newly generated users.

## Generating group memberships

1. Determine how to generate a `.csv` file of 50 groups with basic nesting (groups within groups). Consider using the same method as for generating user data above. How would you represent a group in the generated data (i.e. what columns does your generated `.csv` file need)?

2. Create a script to import groups from the generated `.csv` file into Active Directory. Consider reviewing the existing script for importing users (see above), and repurpose it for creating groups. Note: The [Powershell command for creating a new group](https://docs.microsoft.com/en-us/powershell/module/addsadministration/new-adgroup?view=win10-ps).  

3. Once your groups are imported, how would you randomly assing each user to one of the groups? Is it necessary to modify and re-do the user import completed in the previous section?

