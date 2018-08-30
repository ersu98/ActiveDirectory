# ActiveDirectory
A simple script for removing all users (disabled or not) from groups in Active Directory.


This can be used be used to make automatic routines.


## RemoveUsersFromGroup
Edit group name here.

```
$group = "GROUP_NAME_HERE
```


## RemoveUsersFromMultipleGroups
Edit group names here. Groups are seperated by ','

```
$groups = "GROUP_NAME1", "GROUP_NAME2", "GROUP_NAME3"
```





**NOTE!**

By standard this is set to remove **DISABLED** users from the group(s).


To change this, edit line 8 from **$TRUE** to **$FALSE**

```
if ($user.Enabled -ne $true) {
```
