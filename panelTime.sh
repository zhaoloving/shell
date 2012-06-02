#在gnome3的panel的时间后加上自定义的字符串
#时间格式为 时钟：分钟 时才有效
#使用: sudo bash panelEdit.sh Msg
#其中Msg为附加的字符才，注意正则表达式的转义
#另，备份/usr/share/gnome-shell/js/ui/dateMenu.js文件

cp /usr/share/gnome-shell/js/ui/dateMenu.js dateMenu.js.tmp
sudo sed 's/%a %R[^:;].*$/%a %R'"$1"'");/' < dateMenu.js.tmp >/usr/share/gnome-shell/js/ui/dateMenu.js
