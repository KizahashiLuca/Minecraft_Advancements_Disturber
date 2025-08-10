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
summon minecraft:text_display ~1.05 ~ ~ {text:{text:'<< 戻る',color:'dark_red',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして戻る',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_collisionRule','MAD_TextDisplay_ReturnLink']}

## インタラクション召喚
summon minecraft:interaction ~1.0375 ~ ~0.4125 {width:0.825,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_collisionRule','MAD_Interaction_ReturnLink']}