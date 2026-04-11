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
$summon minecraft:text_display ~0.5 ~ ~ {text:{text:'>>',color:'$(color1)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Difficulty','MAD_TextDisplay_PeacefulDifficultyArrow']}
$summon minecraft:text_display ~-0.6125 ~ ~ {text:{text:'ピースフル',color:'$(color2)',underlined:$(underlined),hover_event:{action:'show_text',value:[{text:'$(text)',color:'gray'}]}},background:$(background),alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Difficulty','MAD_TextDisplay_PeacefulDifficultyButton']}

## インタラクション召喚
summon minecraft:interaction ~0.4875 ~ ~0.1375 {width:0.275,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Difficulty','MAD_Interaction_PeacefulDifficultyButton']}
summon minecraft:interaction ~-0.625 ~ ~0.575 {width:1.15,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Difficulty','MAD_Interaction_PeacefulDifficultyButton']}