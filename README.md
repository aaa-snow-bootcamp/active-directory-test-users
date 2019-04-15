# Active Directory Test Users - Lab Guide

## Overview

Requirements:

- Access to Windows with Active Directory

## Generating user data

1. We first use https://mockaroo.com/ to generate user data. You can use this [example dataset](https://mockaroo.com/2d94ad00) as a starting point.

2. Make sure to enter the LDAP attribute names in the Field Name column. This way we can import the data later automatically, without having to manually map the fields.

> [Reference of LDAP attribute names](https://www.manageengine.com/products/ad-manager/help/csv-import-management/active-directory-ldap-attributes.html)

3. Choose CSV as the export format.

✔ Now we have a CSV file with our user data.

## Importing user data into Active Directory

...

## Groups

...

- https://docs.microsoft.com/en-us/powershell/module/activedirectory/add-adgroupmember?view=winserver2012-ps

