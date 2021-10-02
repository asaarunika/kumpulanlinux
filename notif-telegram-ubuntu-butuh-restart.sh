#!/bin/bash
ID="135049413"
TOKEN="1500168205:AAHyN_pvWE5ZeTRRoA8zxYEDqDJGprkakXk"
#ID="-1001459150571"
#TOKEN="786516894:AAEg1KqdtdMy1MmASfRitlGrOYYkZpd_0A4"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

host=$(cat /etc/hostname)
ip=$(dig +short `hostname -f`)

if [ -f /var/run/reboot-required ]
then
   eksekusi=$(cat /var/run/reboot-required)
   curl -s -X POST $URL -d chat_id=$ID -d text="Hello Server { $host [ $ip ] } $eksekusi "
fi
exit 0
