#!/bin/sh
ADDONDIR="/usr/local/etc/config/addons/mh"
v1="$2"
v7="$1"
v8="$3"
v2=`/bin/tclsh $ADDONDIR/encodesms $v8`
v3=`/bin/tclsh $ADDONDIR/encodesms $v1`
v4=`/bin/tclsh $ADDONDIR/encodesms $v7`
# 
#  replace YOURID with your ID from www.meine-homematic.de
#  replace YOURKEY1 with your KEY1 from www.meine-homematic.de
# 
v5=`/usr/bin/wget --no-check-certificate -O /dev/null --post-data='id=YOURID&key=YOURKEY1&mailto='$v2'&mailbetreff='$v4'&mailtext='$v3 https://www.meine-homematic.de/emailv3.php` 
