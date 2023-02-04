# MSGraphPowerShell
MS Graph PowerShell Code repository

WriteUserOnPremExtensionFromdevicestatus.ps1
This small code updates the Azure AD User OnPremisesExtensionAttributes with the values HaveDevice or DoesNotHaveDevice by evaluating the user OwnedDevice value.

The goal for this code was to update the extensionAttribute1 that could afterwards be used on a Azure AD Dynamic Groups members.
Example "(user.extensionAttribute1 -eq "DoesNotHaveDevice")" or "(user.extensionAttribute1 -eq "HaveDevice")"
