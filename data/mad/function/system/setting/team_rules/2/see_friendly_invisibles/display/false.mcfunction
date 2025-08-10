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
$summon minecraft:text_display ~0.5 ~ ~ {text:{text:'>>',color:'$(color1)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_seeFriendlyInvisibles','MAD_TextDisplay_seeFriendlyInvisiblesFalseArrow']}
$summon minecraft:text_display ~-0.275 ~ ~ {text:{text:'なし',color:'$(color2)',underlined:$(underlined),hover_event:{action:'show_text',value:[{text:'$(text)',color:'gray'}]}},background:$(background),alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_seeFriendlyInvisibles','MAD_TextDisplay_seeFriendlyInvisiblesFalseButton']}

## インタラクション召喚
summon minecraft:interaction ~0.4875 ~ ~0.1375 {width:0.275,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_seeFriendlyInvisibles','MAD_Interaction_seeFriendlyInvisiblesFalseButton']}
summon minecraft:interaction ~-0.2875 ~ ~0.2375 {width:0.475,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_seeFriendlyInvisibles','MAD_Interaction_seeFriendlyInvisiblesFalseButton']}