instal ()
{
echo "[OK] Loading..."

echo "[OK] Finding for Pulseaudio"
sleep 2
if which pulseaudio >/dev/null; then
echo "[OK] Pulseaudio found..."
clear; cat /etc/pulse/default.pa >$PWD/default.pa
sleep 2
echo "[OK] Backup-default.pa created..."
echo "[OK] Editing file /etc/pulse/default.pa"
sleep 2
sudo sed -i '/^### Make some devices default.*/a load-module module-echo-cancel source_name=noechosource sink_name=noechosink\nset-default-source noechosource\nset-default-sink noechosink' /etc/pulse/default.pa
pulseaudio -k

echo "[WAIT FOR 10 SECOINDS]"
sleep 1
echo "[WAIT FOR 09 SECOINDS]"
sleep 1
echo "[WAIT FOR 08 SECOINDS]"
sleep 1
echo "[WAIT FOR 07 SECOINDS]"
sleep 1
echo "[WAIT FOR 06 SECOINDS]"
sleep 1
pulseaudio --start
echo "[WAIT FOR 05 SECOINDS]"
sleep 1
echo "[WAIT FOR 04 SECOINDS]"
sleep 1
echo "[WAIT FOR 03 SECOINDS]"
sleep 1
echo "[WAIT FOR 02 SECOINDS]"
sleep 1
echo "[WAIT FOR 01 SECOINDS]"
sleep 1
echo "[OK] Done"
sleep 2
echo "[OK] First restart your system than follow the steps"
echo "[OK] Please go to:"
echo "[OK] Settings >"
echo "[OK] Audio >"
echo "[OK] Input Device >"
echo "[OK] Select  Echo cancelled with...>"


else
echo "[NO] Pulseaudio found..."
echo "[KO] Installing Pulseaudio.."
echo "[KO] Running command>> sudo atp install pulseaudio  .."
sudo apt-get install pulseaudio
pulseaudio --start


echo "[OK] Please run the tool after update upgrade"
echo "[OK] command sudo apt update;sudo apt upgrade"
echo "[OK] See you again exit"
fi
}

remove ()
{

sudo cp default.pa /etc/pulse/
echo "[OK] Restored"
echo "[OK] Thank you"
pulseaudio -k
pulseaudio --start
}

activate ()
{
pulseaudio -k
pulseaudio --start
pulseaudio --start

}

factivate ()
{
pulseaudio --start
}

echo "**************************************************"
echo "**Noise Cancellation + Enable Echo Cancellation **"
echo "********Using tool Created by EFX TV *************"
echo "******Video link https://youtu.be/rHBVM2bnrPU ****"
echo "**************************************************"
echo
echo -e "[$orange 01$lightgreen ] Install"
echo -e "[$orange 02$lightgreen ] Activate"
echo -e "[$orange 03$lightgreen ] FActivate"
echo -e "[$orange 04$lightgreen ] Remove"
echo -e "[$orange 05$lightgreen ] Exit"
echo -en "[$orange IN$lightgreen ] ──────  [$orange 1$lightgreen ]─[$orange 2$lightgreen ]─[$orange 3$lightgreen ]─[$orange 0$lightgreen ]  ────── :"
read soun

if [[ $soun == "1" || $soun == "01" ]];
then
instal
  
elif [[ $soun == "2" || $soun == "02" ]];
then
activate
  
elif [[ $soun == "3" || $soun == "03" ]];
then
factivate

elif [[ $soun == "4" || $soun == "04" ]];
then
remove
  
elif [[ $soun == "5" || $soun == "05" ]];
then
echo 
echo "Please subscribe EFX Tv.. Thank you"
exit

  
else
echo "[ XX ] ARE YOU KIDDING ME? PLEASE TRY AGAIN"
fi
