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
summon minecraft:text_display ~ ~ ~ {text:{text:'リセット',color:'dark_red',underlined:true,hover_event:{action:'show_text',value:[{text:'$(text)',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_DeathPenaltyTime','MAD_TextDisplay_ResetButton']}

## インタラクション召喚
summon minecraft:interaction ~-0.0125 ~ ~0.4625 {width:0.925,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_DeathPenaltyTime','MAD_Interaction_ResetButton']}