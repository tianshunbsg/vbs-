dim WSHshell , shuru
shuru=Inputbox ("请输入你想要倒计时关机的秒数（最少5秒），如果想取消关机请输入数字 “1” 即可取消。本工具已经在github开源，制作人：黑客派屑胞人")

If shuru < 5 Then
set ws=wscript.createobject("wscript.shell")
ws.run "shutdown -a"

'如果输入的时间小于5秒就取消关机

Else
daojis = shuru * 1000
daojishi = daojis - 5000

'如果输入的时间大于等于5秒就执行关机，并进行运算，由毫秒运算为秒，并减掉误差值

set ws=wscript.createobject("wscript.shell")
wscript.sleep daojishi
msgbox"此电脑将在10秒后关机，如想取消请运行关机助手并输入数字 “1” "
ws.run "shutdown -s -t 10"
End If