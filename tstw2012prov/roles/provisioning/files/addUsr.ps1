#ps1_sysnative
if ($existing -eq $null) {

    #   This will create a new local user $Username.
    &   net user $Username $Password /add /Y /expires:never /passwordchg:NO /Y `
    /comment:$grpDescription /fullname:$Fullname 

    #   This will Add the local user to $Username to $group.
    &   net localgroup $group $Username /add
}
else {
    #   This will setting the password to the variable defined if the $Username already exists
    $existing.SetPassword($Password)
}
    #   This will ensure that the password for $Username never expires
    & WMIC USERACCOUNT WHERE "Name= '$Username'" SET PasswordExpires=FALSE
    #   Here we will remove the user we created from the Users group
    &   net localgroup Users $Username /delete