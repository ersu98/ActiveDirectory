Import-Module ActiveDirectory

$groups = "GROUP_NAME1", "GROUP_NAME2", "GROUP_NAME3"

foreach ($group in $groups) {
    $members = Get-AdGroupMember "$group"
    foreach ($member in $members) {
        $user = Get-ADUser "$member"
        if ($user.Enabled -ne $true) {
            Remove-AdGroupMember "$group" "$member"
        }
    }
}