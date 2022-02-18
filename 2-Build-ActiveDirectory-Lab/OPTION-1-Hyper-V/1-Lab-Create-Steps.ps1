##########################################
# Ex - title
##########################################

# Ex - Step / note reminder




##########################################
# Setup Hyper-V
##########################################

#// https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v

# WARNING!! 
    # ___REBOOT___ Needed - for New Installs !!
# WARNING!! 

# Add the Feature (if not already installed)

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All


# Adjust a few defaults

Set-VMhost -EnableEnhancedSessionMode $true

    # Check it w/ - Get-VMHost | fl -Property EnableEnhancedSessionMode





##########################################
# Create your new Domain Controller - VM
##########################################

# Download an Eval. version of Windows Server 
    # Boring Step -> This will take several minutes!

Start-Process -FilePath "https://www.google.com/search?q=windows+server+evaluation"
    # Or you can just browse to this


# Once complete - IF YOU CAN, make a copy the file


# NOW - Create your New VM

    ## ensure - renamed the VHD - to make it easier to type these cmds

New-VM -Name DC-1 -MemoryStartupBytes 4096MB -VHDPath c:\VHDs\WS2019-eval.vhd -SwitchName "Default Switch"

# Power it ON
Start-VM -Name DC-1

# Use the Hyper-V 'console' app - to CONNECT!
vmconnect localhost DC-1



##########################################
# Manage - using GUI
##########################################

# View details

# Connect / Power on, etc.