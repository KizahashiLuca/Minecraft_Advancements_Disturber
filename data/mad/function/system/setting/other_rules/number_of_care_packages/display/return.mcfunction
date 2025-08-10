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
execute if score #mad NumberOfCarePackages matches 1..5 run summon minecraft:text_display ~1.05 ~ ~ {text:{text:'<< 戻る',color:'dark_red',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして戻る',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_NumberOfCarePackages','MAD_TextDisplay_ReturnLink']}
execute unless score #mad NumberOfCarePackages matches 1..5 run summon minecraft:text_display ~1.05 ~ ~ {text:{text:'<< 戻る',color:'gray',underlined:false,hover_event:{action:'show_text',value:[{text:'支援物資投下数は1～5個の範囲で指定してください',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_NumberOfCarePackages','MAD_TextDisplay_ReturnLink']}

## インタラクション召喚
execute if score #mad NumberOfCarePackages matches 1..5 run summon minecraft:interaction ~1.0375 ~ ~0.4125 {width:0.825,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_NumberOfCarePackages','MAD_Interaction_ReturnLink']}