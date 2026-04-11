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
$summon minecraft:text_display ~0.5 ~ ~ {text:{text:'>>',color:'$(color1)',strikethrough:$(strikethrough)},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_MatchMode','MAD_TextDisplay_IndividualMatchArrow']}
$summon minecraft:text_display ~-0.3875 ~ ~ {text:{text:'個人戦',color:'$(color2)',underlined:$(underlined),strikethrough:$(strikethrough),hover_event:{action:'show_text',value:[{text:'$(text)',color:'gray'}]}},background:$(background),alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_MatchMode','MAD_TextDisplay_IndividualMatchButton']}

## インタラクション召喚
summon minecraft:interaction ~0.4875 ~ ~0.1375 {width:0.275,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_MatchMode','MAD_Interaction_IndividualMatchButton']}
summon minecraft:interaction ~-0.4 ~ ~0.35 {width:0.7,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_MatchMode','MAD_Interaction_IndividualMatchButton']}