Teams is one of the Microsoft applications that isn’t easily deploy-able using InTune, it’s not one of the default supported applications and there is no MSI for it. So how do we install teams using only the .exe and a method supported by InTune? PowerShell! We can deploy a PowerShell script to install teams through InTune.

We we will need to complete the following steps through PowerShell;

1. Check if Teams is already installed
2. Check whether we need the 64 or 32 bit installer
3. Download the installer
4. Run the installer

All you need to do is take this script, upload it to the PowerShell scripts section under Device Configuration, run it in the users context and the assign users / groups to it.

<a href="http://extendedit.co.uk/office365/installing-microsoft-teams-using-intune/">more...<a/>
