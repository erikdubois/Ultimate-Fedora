#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

rm -rf /tmp/sublime_text_3_build_3126_x64.tar.bz2
rm -rf /tmp/sublime_text_3
sudo rm -rf /opt/sublime_text_3

wget https://download.sublimetext.com/sublime_text_3_build_3126_x64.tar.bz2 -O /tmp/sublime_text_3_build_3126_x64.tar.bz2
tar vxjf /tmp/sublime_text_3_build_3126_x64.tar.bz2 -C /tmp
sudo mv -fv /tmp/sublime_text_3 /opt/
sudo ln -sf /opt/sublime_text_3/sublime_text /usr/bin/subl

# configure app for desktop use
sudo bash -c "cat <<EOF > /usr/share/applications/sublime_text.desktop                                                                 
[Desktop Entry]
Version=1.0
Type=Application
Name=Sublime Text
GenericName=Text Editor
Comment=Sophisticated text editor for code, markup and prose
Exec=/opt/sublime_text/sublime_text %F
Terminal=false
MimeType=text/plain;
Icon=sublime-text
Categories=TextEditor;Development;
StartupNotify=true
Actions=Window;Document;

[Desktop Action Window]
Name=New Window
Exec=/opt/sublime_text/sublime_text -n
OnlyShowIn=Unity;

[Desktop Action Document]
Name=New File
Exec=/opt/sublime_text/sublime_text --command new_file
OnlyShowIn=Unity;
EOF"


rm /tmp/sublime_text_3_build_3126_x64.tar.bz2



##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


