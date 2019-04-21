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
	[string]$InputFileName = "users.csv",
)

# Import active directory module for running AD cmdlets
Import-Module activedirectory

# Check if CSV file exists
if (!(Test-Path $InputFileName))
{
    Write-Warning "The input file name you specified can't be found."
    EXIT
}

# Loop through each record in the CSV file 
Import-Csv $InputFileName | Foreach-Object { 

   #Check to see if the user already exists in AD
   if (Get-ADUser -F {SamAccountName -eq $_.SamAccountName})
   {
   	#If user does exist, give a warning
	Write-Warning "A user account with username $Username already exist in Active Directory."
   }
   else
   {
	# Create AD user
	New-ADUser -SamAccountName $Username

	# Set each user attribute as specified in the CSV file
	foreach ($property in $_.PSObject.Properties)
	{
		Invoke-Expression -Command "Set-ADUser -$($property.Name) $($property.Value)"
	} 
   }

}
