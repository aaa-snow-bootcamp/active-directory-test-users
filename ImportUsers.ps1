# Imports Active Directory Users from CSV
#
# Usage:
#
# ImportUsers <Path to CSV file>
#
# Supply a CSV file containing Active Directory user data.
# - The header row must specify valid Active Directory attribute names.
# - A SamAccountName is required for each user.

[CmdletBinding()]
param (
	[Parameter( Mandatory=$false)]
	[string]$InputFileName = "users.csv"
)

# Import active directory module for running AD cmdlets
Import-Module activedirectory

# Check if CSV file exists
if (!(Test-Path $InputFileName))
{
    Write-Warning "The input file name you specified can't be found."
    EXIT
}
  
#Store the data from ADUsers.csv in the $ADUsers variable
$ADUsers = Import-csv "users.csv"

#Loop through each row containing user details in the CSV file 
foreach ($User in $ADUsers)
{
		
        #Account will be created in the OU provided by the $OU variable read from the CSV file
		New-ADUser `
            -SamAccountName $User.SamAccountName `
            -Name $User.Name `
            -GivenName $User.GivenName `
            -Surname $User.Surname `
            -Enabled $True `
            -DisplayName $User.DisplayName `
            -City $User.City `
            -State $User.State `
            -PostalCode $User.PostalCode `
            -StreetAddress $User.StreetAddress`
            -OfficePhone $User.OfficePhone `
            -EmailAddress $User.EmailAddress `
            -Title $User.Title `
            -EmployeeID $user.EmployeeID `
            -AccountPassword (convertto-securestring "PASSWORDabcdefg123456$-" -AsPlainText -Force) -ChangePasswordAtLogon $True `
}
