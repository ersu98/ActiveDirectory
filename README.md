# ActiveDirectory
A simple script for removing all users (disabled or not) from groups in Active Directory.

## RemoveUsersFromGroup
Edit group name here.

>$group = "GROUP_NAME_HERE


By standard this is set to remove **DISABLED** users from the group.

To change this, edit line 8 from **$TRUE** to **$FALSE**
>if ($user.Enabled -ne $true) {

## RemoveUsersFromMultipleGroups
Edit group names here. Groups are seperated by ','

>$groups = "GROUP_NAME1", "GROUP_NAME2", "GROUP_NAME3"


By standard this is set to remove **DISABLED** users from the group.

To change this, edit line 8 from **$TRUE** to **$FALSE**
