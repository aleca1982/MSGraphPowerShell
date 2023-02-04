# connect to Microsoft Graph using an App Id with a Certificate Secret
Connect-MgGraph -ClientID AppID  -TenantId tenantID -CertificateThumbprint certificate_Thumbprint


# List users
$Users = Get-mgUser -All | select-object Id

ForEach ($User in $Users)
{
    # Check what users have devices (count devices per user)
    $GetUsersDevice =  (Get-MgUserOwnedDevice -UserID $user.Id).count
    # Evaluate each user and write update the -OnPremisesExtensionAttributes
    ForEach ($result In $GetUsersDevice) {
        # If a user have more than 1 device
        If ($result -gt 0) {
            Update-MgUser -UserID $User.Id -OnPremisesExtensionAttributes @{extensionAttribute1 = "HaveDevice"}
            
        }
        # If a user does not have a device
        Else {
           Update-MgUser -UserID $User.Id -OnPremisesExtensionAttributes @{extensionAttribute1 = "DoesNotHaveDevice"}
        }
        
    }
}




    
