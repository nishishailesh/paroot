# PulseAudio-System-Wide
# Git to help you setup pulse audio as a system wide service. this has been tested and found to work on Raspberry Pi
# Tested on debian 13
# Working well
# Thanks https://github.com/shivasiddharth/PulseAudio-System-Wide
# run this script as root or do sudo
cp ./pulseaudio.service /etc/systemd/system/pulseaudio.service
systemctl --system enable pulseaudio.service
systemctl --system start pulseaudio.service
sudo cp ./client.conf /etc/pulse/client.conf
sudo sed -i '/^pulse-access:/ s/$/root,pi/' /etc/group
#All done. Now you should have PulseAudio as a system service.
#logout and login  in gui
