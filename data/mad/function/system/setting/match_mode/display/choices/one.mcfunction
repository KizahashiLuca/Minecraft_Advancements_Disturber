#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テキストディスプレイ召喚
#### ソロ戦
execute positioned ~ ~0.0 ~ run function mad:system/setting/match_mode/display/choices/solo {color1:'dark_blue',color2:'white',strikethrough:'false',text:'選択中です',background:'-16777046'}
#### 個人戦
execute positioned ~ ~0.5 ~ run function mad:system/setting/match_mode/display/choices/individual {color1:'gray',color2:'gray',underlined:'false',strikethrough:'true',text:'選択できません',background:'0'}
#### チーム戦
execute positioned ~ ~1.0 ~ run function mad:system/setting/match_mode/display/choices/team {color1:'gray',color2:'gray',underlined:'false',strikethrough:'true',text:'選択できません',background:'0'}