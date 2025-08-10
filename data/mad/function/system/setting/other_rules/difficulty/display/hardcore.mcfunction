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
$summon minecraft:text_display ~0.5 ~ ~ {text:{text:'>>',color:'$(color1)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Difficulty','MAD_TextDisplay_HardcoreDifficultyArrow']}
$summon minecraft:text_display ~-0.6125 ~ ~ {text:{text:'ハードコア',color:'$(color2)',underlined:$(underlined),hover_event:{action:'show_text',value:[{text:'$(text)',color:'gray'}]}},background:$(background),alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Difficulty','MAD_TextDisplay_HardcoreDifficultyButton']}

## インタラクション召喚
summon minecraft:interaction ~0.4875 ~ ~0.1375 {width:0.275,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Difficulty','MAD_Interaction_HardcoreDifficultyButton']}
summon minecraft:interaction ~-0.625 ~ ~0.575 {width:1.15,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Difficulty','MAD_Interaction_HardcoreDifficultyButton']}