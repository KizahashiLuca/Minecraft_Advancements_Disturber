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
$summon minecraft:text_display ~1.0 ~ ~ {text:{text:'対戦形式',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:$(text1),color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_MatchModeLink']}
$summon minecraft:text_display ~-0.9 ~ ~ {text:{text:$(text2),color:$(color)},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_MatchMode']}

## インタラクション召喚
summon minecraft:interaction ~0.9875 ~ ~0.4625 {width:0.925,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Root','MAD_Interaction_MatchModeLink']}