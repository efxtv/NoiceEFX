# NoiceEFX (Enable Noise and Echo cancellation in Linux headphones, webcam, mic using Pulse Audio noise cancellation tool. <a href="https://www.youtube.com/channel/UCIWHXkNEHsedIz62jUJwAew">Subscribe</a> 
<a href="https://youtu.be/rHBVM2bnrPU"><img src="https://github.com/efxtv/NoiceEFX/blob/main/how%20to%20enable%20noise%20cancellation%20in%20Linux%20headphones%20using%20Pulse%20Audio%20to%20Fix%20Linux%20Sound2.png" title="how to enable noise cancellation in Linux headphones using Pulse Audio to Fix Linux Sound by EFX TV" width="720"></a>


Using NoiceEFX.sh this tool you can Enable noise and echo cancellation in your Linux machine. Follow the steps below.


Must read the description: To remove the 90% background noise coming through your headphone or webcam mic, you have to do is, edit this file mentioned below: 
Add the lines just after line ### Make some devices default

Edit file:
sudo nano /etc/pulse/default.pa

Add the lines after ### Make some devices default
load-module module-echo-cancel source_name=noechosource sink_name=noechosink
set-default-source noechosource
set-default-sink noechosink

Ctrl + o to save 
Ctrl + x to exit....

There can be some errors to fix them must watch the video. If you don't restart your PulseAudio in the proper manner maybe you need to restart your system and start the demon again which is a long process. That is the reason I made this tool to make everything working in few clicks.

How to run the tool NoiceEFX.sh
Using NoiceEFX.sh this tool you can Enable noise and echo cancellation in your Linux machine. Follow the steps below.
Note: once you start the tool it will look for the PulseAudio tool. If it is not installed it will install it automatically. There is a file in the Backup directory. Make sure you should not edit that. That is a fresh copy of default.pa file. In case you mess or deleted that file you can copy-paste the same file to the location  /etc/pulse/default.pa

Step 1 Git clone the tool:
git clone https://github.com/efxtv/NoiceEFX.git

Step 2 
Get inside NoiceEFX and provide execution permission
cd NoiceEFX.sh
chmod 755 noiceefx.sh

Step 3 
Install
Install Activate and ForceActivate

Step 4 
Configure the Kazam or any screen recorder to get the noise cancellation feature.
Go to Linux system settings 
Select Sound Scroll down and search for Input
Select the input as shown in the video.

ERROR
If there is no input and output file please watch the full video to fix that error.


