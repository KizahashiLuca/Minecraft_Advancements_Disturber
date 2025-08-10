#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ召喚
## テキストディスプレイ
summon minecraft:text_display ~-0.0125 ~ ~0.5 {text:{text:'\nプレイヤー\nモード変更\n',color:'white',underlined:true,hover_event:{action:'show_text',value:[{text:'サバイバルモードの場合クリック\n',color:'gray'},{text:'スペクテイターモードの場合、に突入',color:'gray'}]}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.875,1.0,1.0]},background:16777215,alignment:'center',Rotation:[0.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_ChangeSpectator']}
summon minecraft:text_display ~-0.0125 ~ ~-0.5 {text:{text:'\nプレイヤー\nモード変更\n',color:'white',underlined:true,hover_event:{action:show_text,value:[{text:'サバイバルモードの場合クリック\n',color:'gray'},{text:'スペクテイターモードの場合に突入',color:'gray'}]}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.875,1.0,1.0]},background:16777215,alignment:'center',Rotation:[0.0f, 180.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_ChangeSpectator']}
## ブロックディスプレイ
setblock ~ ~ ~ minecraft:end_gateway
## インタラクション
summon minecraft:interaction ~ ~ ~-0.05 {width:1.1,height:1.1,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_ChangeSpectator']}