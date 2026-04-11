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
execute if score #mad BonusTimeOfKill matches 1..1000 run summon minecraft:text_display ~1.05 ~ ~ {text:{text:'<< 戻る',color:'dark_red',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして戻る',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_BonusTimeOfKill','MAD_TextDisplay_ReturnLink']}
execute unless score #mad BonusTimeOfKill matches 1..1000 run summon minecraft:text_display ~1.05 ~ ~ {text:{text:'<< 戻る',color:'gray',underlined:false,hover_event:{action:'show_text',value:[{text:'撃破ボーナスは1～1000秒の範囲で指定してください',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_BonusTimeOfKill','MAD_TextDisplay_ReturnLink']}

## インタラクション召喚
execute if score #mad BonusTimeOfKill matches 1..1000 run summon minecraft:interaction ~1.0375 ~ ~0.4125 {width:0.825,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_BonusTimeOfKill','MAD_Interaction_ReturnLink']}