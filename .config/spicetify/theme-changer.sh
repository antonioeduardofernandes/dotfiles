#!/bin/bash

echo selecione o tema desejado:
select THEME in Adapta-Nokto Bittersweet Bloody BurntSienna DanDrumStone Dribbblish Elementary Flatten Gradianto Gruvbox-Gold Lovelace Material-Ocean Midnight-Light MoonChild Nord Onepunch Otto Pop-Dark TychoAwake
do
	echo $THEME
	if [ $THEME = "Dribbblish" ];then
		select DRIBBBLISH in base white dark dracula nord-dark nord-light samourai
		do
			cp ~/.config/spicetify/Themes/Dribbblish/dribbblish.js ~/.config/spicetify/Extensions && spicetify config extensions dribbblish.js && spicetify config current_theme Dribbblish color_scheme $DRIBBBLISH && spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 && spicetify apply
			break;
		done
	fi
	spicetify config current_theme $THEME && spicetify apply
	break;
done
