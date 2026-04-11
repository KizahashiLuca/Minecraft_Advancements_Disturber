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
summon minecraft:text_display ~0.975 ~1.50 ~ {text:{text:'対戦形式',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_MatchMode','MAD_TextDisplay_MatchModeTitle']}
#### プレイヤー1人
execute if predicate mad:gamerule/num_of_players/solo positioned ~ ~ ~ run function mad:system/setting/match_mode/display/choices/one
#### プレイヤー複数人
execute if predicate mad:gamerule/num_of_players/not_solo positioned ~ ~ ~ run function mad:system/setting/match_mode/display/choices/not_one
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/match_mode/display/return