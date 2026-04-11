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
summon minecraft:text_display ~-1.025 ~ ~ {text:{text:'>> 開始',color:'dark_green',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックしてゲーム開始',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamMember','MAD_TextDisplay_OKLink']}

## インタラクション召喚
summon minecraft:interaction ~-1.0375 ~ ~0.4125 {width:0.825,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_TeamMember','MAD_Interaction_OKLink']}