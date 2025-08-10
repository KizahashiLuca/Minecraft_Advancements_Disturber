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
summon minecraft:text_display ~1.0 ~ ~ {text:{text:'追加時間',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'進捗を1つ解除した際に各チーム/プレイヤーに付与される時間',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_BonusTimeOfAdvancementsLink']}
summon minecraft:text_display ~-0.9 ~ ~ {text:{translate:'%s%s',with:[{score:{name:'#mad',objective:'BonusTimeOfAdvancements'}},{text:'秒'}],color:'dark_green'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_BonusTimeOfAdvancements']}

## インタラクション召喚
summon minecraft:interaction ~0.9875 ~ ~0.4625 {width:0.925,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Root','MAD_Interaction_BonusTimeOfAdvancementsLink']}