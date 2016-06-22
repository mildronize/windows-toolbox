# Windows Toolbox

A List of Utility Script on Windows

## Tools
- [Cmder](http://cmder.net/) - Better console emulator for Windows (Recommended)

## Install
1. Clone this project
2. Setup variable environment for this project

## Hotspot
Create, start, and stop Hotspot WiFi
### Prerequisite
- Read [this blog](http://dev.mildronize.com/th/script-for-creating-a-wifi-hotspot-without-install-wifi-hotspot-tools-th/) for setting up `hotpot` ( Thai )

### CLI
```
hospot # Setting a name of Wi-Fi and its password
hospot start # start Hotspot
hospot stop # stop Hotspot
hospot restart # restart Hotspot
```

## Vbox
Start, stop, and list virtual machines by [VirtualBox](https://www.virtualbox.org) with headless mode. Then, you can use [Putty](www.putty.org) or other SSH client to connect the virtual machine.

### Prerequisite
- Make sure you already installed [VirtualBox](https://www.virtualbox.org/wiki/Downloads) in your computer.
- Edit `vbox.bat` at the line following
  ```
  SET VirtualBoxPath=C:\Program Files\Oracle\VirtualBox
  SET DefaultVmName=md9-dev
  ```
  - For `VirtualBoxPath` variable is a path of Virtualbox where is installed.
  - For `DefaultVmName` variable is a default Virtual Machine name in order to **not enter virtual machine name all time**.

### CLI
```
vbox help
vbox start [VM Name]
vbox stop  [VM Name]

# Start and stop with default VM name
vbox start
vbox stop

# List virtual machines
vbox ls
vbox list
```
