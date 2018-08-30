Import-Module ActiveDirectory

$group = "GROUP_NAME_HERE"
$members = Get-AdGroupMember "$group"

foreach ($member in $members) {
    $user = Get-ADUser "$member"
    if ($user.Enabled -ne $true) {
        Remove-AdGroupMember "$group" "$member" -Confirm:$false
    }
}