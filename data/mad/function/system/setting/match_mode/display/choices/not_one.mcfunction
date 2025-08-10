#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## テキストディスプレイ召喚
#### ソロ戦
execute positioned ~ ~0.0 ~ run function mad:system/setting/match_mode/display/choices/solo {color1:'gray',color2:'gray',strikethrough:'true',text:'選択できません',background:'-1'}
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/not_solo run execute positioned ~ ~0.5 ~ run function mad:system/setting/match_mode/display/choices/individual {color1:'dark_red',color2:'white',underlined:'false',strikethrough:'false',text:'選択中です',background:'-5636096'}
execute if predicate mad:gamerule/match_mode/team run execute positioned ~ ~0.5 ~ run function mad:system/setting/match_mode/display/choices/individual {color1:'gray',color2:'dark_red',underlined:'true',strikethrough:'false',text:'クリックして変更',background:'-1'}
#### チーム戦
execute if predicate mad:gamerule/match_mode/individual/not_solo run execute positioned ~ ~1.0 ~ run function mad:system/setting/match_mode/display/choices/team {color1:'gray',color2:'dark_green',underlined:'true',strikethrough:'false',text:'クリックして変更',background:'-1'}
execute if predicate mad:gamerule/match_mode/team run execute positioned ~ ~1.0 ~ run function mad:system/setting/match_mode/display/choices/team {color1:'dark_green',color2:'white',underlined:'false',strikethrough:'false',text:'選択中です',background:'-16733696'}