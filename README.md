# fer-network
Collection of scripts for connecting to common wireless networks for students of FER.

Scripts in this collection are lightweight and work under Debian operating system. They're made for use within terminal for systems with low resources.

## Scanning available wireless networks
To scan available wireless networks use following commands:
```
sudo iwlist wlan0 scan

# You can pipe output of iwlist to less for better readability
sudo iwlist wlan0 scan | less
```

## Connecting to ferwlan
Put **fer.conf** in directory /etc/wpa_supplicant/ and put your login data inside conf file.
To run script use following commands:
```
# Make sure your interface is up
sudo ifconfig wlan0 up

# Use -B arguemnt to run wpa_supplicant in deamon mode
sudo wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/fer.conf

# Start dhclient on interface wlan0
sudo dhclient wlan0

```

## Connecting to eduroam
Put **eduroam.conf** in directory /etc/wpa_supplicant/ and put your login data inside conf file. You also need to add path to eduroam .pam file.
To run script use following commands:
```
# Make sure your interface is up
sudo ifconfig wlan0 up

# Use -B arguemnt to run wpa_supplicant in deamon mode
sudo wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/eduroam.conf

# Start dhclient on interface wlan0
sudo dhclient wlan0

```

## Connecting to KSET-public
To run script use following commands:
```
# Make sure kset.sh has 755 permissions
sudo chmod 755 kset.sh

sudo ./kset.sh
```

## Connecting to any other WPA network
Change data inside **wpa.conf** file, then move file to directory /etc/wpa_supplicant/
To run script use following commands:
```
# Make sure your interface is up
sudo ifconfig wlan0 up

# Use -B arguemnt to run wpa_supplicant in deamon mode
sudo wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/wpa.conf

# Start dhclient on interface wlan0
sudo dhclient wlan0
```

## Connecting to DuoCARNET services
Make sure to have package **pppoeconf** installed on your system, when configuring PPPoE make sure to select *wlan0* or any other wireless device as default device.

Connect to router using one of the above methods and then start PPPoE connection with following command:
```
sudo pon dsl-provider # Change dsl-provider with name of your PPPoE service
```
