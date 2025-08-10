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
execute if predicate mad:gamerule/match_mode/individual/ run summon minecraft:text_display ~-1.025 ~ ~ {text:{text:'>> 開始',color:'dark_green',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックしてゲーム開始',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_OKLink']}
execute if predicate mad:gamerule/team_rules/1/set_team_manual/true run summon minecraft:text_display ~-1.025 ~ ~ {text:{text:'>> 次へ',color:'dark_green',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックしてチーム編成手動設定開始',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_OKLink']}
execute if predicate mad:gamerule/team_rules/1/set_team_manual/false run summon minecraft:text_display ~-1.025 ~ ~ {text:{text:'>> 開始',color:'dark_green',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックしてチーム編成ランダム設定',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_OKLink']}

## インタラクション召喚
summon minecraft:interaction ~-1.0375 ~ ~0.4125 {width:0.825,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Root','MAD_Interaction_OKLink']}