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
execute positioned ~ ~0.0 ~ run function mad:system/setting/match_mode/display/choices/solo {color1:'gray',color2:'gray',strikethrough:'true',text:'選択できません',background:'0'}
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/not_solo run execute positioned ~ ~0.5 ~ run function mad:system/setting/match_mode/display/choices/individual {color1:'dark_red',color2:'white',underlined:'false',strikethrough:'false',text:'選択中です',background:'-5636096'}
execute if predicate mad:gamerule/match_mode/team run execute positioned ~ ~0.5 ~ run function mad:system/setting/match_mode/display/choices/individual {color1:'gray',color2:'dark_red',underlined:'true',strikethrough:'false',text:'クリックして変更',background:'0'}
#### チーム戦
execute if predicate mad:gamerule/match_mode/individual/not_solo run execute positioned ~ ~1.0 ~ run function mad:system/setting/match_mode/display/choices/team {color1:'gray',color2:'dark_green',underlined:'true',strikethrough:'false',text:'クリックして変更',background:'0'}
execute if predicate mad:gamerule/match_mode/team run execute positioned ~ ~1.0 ~ run function mad:system/setting/match_mode/display/choices/team {color1:'dark_green',color2:'white',underlined:'false',strikethrough:'false',text:'選択中です',background:'-16733696'}