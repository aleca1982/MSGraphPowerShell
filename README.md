# MSGraphPowerShell
MS Graph PowerShell Code repository

WriteUserOnPremExtensionFromdevicestatus.ps1
This small code updates the Azure AD User OnPremisesExtensionAttributes with the values HaveDevice or DoesNotHaveDevice by evaluating the user OwnedDevice value.
The goal for this code to update the extensionAttribute1 that could afterwards be used to populate Azure AD Dynamic Groups members.
