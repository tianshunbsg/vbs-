dim WSHshell , shuru
shuru=Inputbox ("����������Ҫ����ʱ�ػ�������������5�룩�������ȡ���ػ����������� ��1�� ����ȡ�����������Ѿ���github��Դ�������ˣ��ڿ���м����")

If shuru < 5 Then
set ws=wscript.createobject("wscript.shell")
ws.run "shutdown -a"

'��������ʱ��С��5���ȡ���ػ�

Else
daojis = shuru * 1000
daojishi = daojis - 5000

'��������ʱ����ڵ���5���ִ�йػ������������㣬�ɺ�������Ϊ�룬���������ֵ

set ws=wscript.createobject("wscript.shell")
wscript.sleep daojishi
msgbox"�˵��Խ���10���ػ�������ȡ�������йػ����ֲ��������� ��1�� "
ws.run "shutdown -s -t 10"
End If