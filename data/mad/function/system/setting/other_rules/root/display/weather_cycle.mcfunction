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
summon minecraft:text_display ~0.775 ~ ~ {text:{text:'天気サイクル',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'天候が自然に変動するかどうか',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_WeatherCycleLink']}
$summon minecraft:text_display ~-0.9 ~ ~ {text:{text:'$(text)',color:'$(color)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_WeatherCycle']}

## インタラクション召喚
summon minecraft:interaction ~0.7625 ~ ~0.6875 {width:1.375,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_OtherRules','MAD_Interaction_WeatherCycleLink']}