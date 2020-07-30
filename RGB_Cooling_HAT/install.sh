#!/bin/sh

sudo echo 'hdmi_force_hotplug=1' >> /boot/config.txt

get_script_dir () {
     SOURCE="${BASH_SOURCE[0]}"
     # While $SOURCE is a symlink, resolve it
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          # If $SOURCE was a relative symlink (so no "/" as prefix, 
	  # need to resolve it relative to the symlink base directory
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
     echo "$DIR"
}
#echo "$(get_script_dir)"

cd /home/pi/.config/
mkdir /home/pi/.config/autostart
cd /home/pi/.config/autostart

#cp $(get_script_dir)/start.desktop /home/pi/.config/autostart/
cp /home/pi/Desktop/raspi-tools/RGB_Cooling_HAT/start.desktop /home/pi/.config/autostart/
echo 'install ok!'
