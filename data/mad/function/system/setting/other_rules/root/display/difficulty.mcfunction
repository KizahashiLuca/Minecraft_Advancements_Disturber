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
summon minecraft:text_display ~1.1125 ~ ~ {text:{text:'難易度',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更',color:'gray'},{text:'マインクラフトの難易度',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_DifficultyLink']}
$summon minecraft:text_display ~-0.9 ~ ~ {text:{text:'$(text)',color:'$(color)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_Difficulty']}

## インタラクション召喚
summon minecraft:interaction ~1.1 ~ ~0.35 {width:0.7,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_OtherRules','MAD_Interaction_DifficultyLink']}