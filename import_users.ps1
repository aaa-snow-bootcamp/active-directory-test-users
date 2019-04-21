# Imports Active Directory Users from CSV
# - CSV header row must specify AD attribute names
# - SamAccountName is required for each user

# Import active directory module for running AD cmdlets
Import-Module activedirectory

# Loop through each record in the CSV file 
Import-Csv $path | Foreach-Object { 

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
