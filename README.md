# TouchscreenShenanigans
Disable and then renable the touchscreen/pad if it detects an error

# Description
My Dell Chrombook 11 will not run both the touchscreen and touchpad at the same time.

To save hassle I disable elan_i2c and then renable if the script detects the error in journal

It is not terriblly efficent, but I attempted to streamline as well as I could.

# Usage
Make the .sh file executable and update the path in the service file to where the script is.

Put the service file with your other service files.
For example:
```
mv touchDisable.service /usr/lib/systemd/system/
```
Then make sure to reload, enable, and start the proccess:
```
sudo systemctl daemon-reload 
sudo systemctl enable touchDisable.service
sudo systemctl start touchDisable.service
```
