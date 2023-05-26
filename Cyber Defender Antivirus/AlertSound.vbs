Set Sound = CreateObject("WMPlayer.OCX.7")
Sound.URL = "C:\Windows\Media\Windows Background.wav"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 200
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000