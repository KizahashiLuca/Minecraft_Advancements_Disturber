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
#### タイトル
summon minecraft:text_display ~0.975 ~1.50 ~ {text:{text:'チーム数',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_NumberOfTeams','MAD_TextDisplay_NumberOfTeamsTitle']}
#### 上矢印
execute positioned ~0.00 ~1.00 ~ run function mad:system/setting/team_rules/1/number_of_teams/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up'}
#### 数字
execute positioned ~0.00 ~0.55 ~ run function mad:system/setting/team_rules/1/number_of_teams/display/number
#### チーム
execute positioned ~-0.75 ~0.525 ~ run function mad:system/setting/team_rules/1/number_of_teams/display/team
#### 下矢印
execute positioned ~0.00 ~0.20 ~ run function mad:system/setting/team_rules/1/number_of_teams/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down'}
#### リセットボタン
execute positioned ~ ~-0.25 ~ run function mad:system/setting/team_rules/1/number_of_teams/display/reset
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_rules/1/number_of_teams/display/return