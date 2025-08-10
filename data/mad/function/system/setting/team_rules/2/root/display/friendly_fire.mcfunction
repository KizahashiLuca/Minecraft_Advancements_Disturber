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
summon minecraft:text_display ~0.55 ~ ~ {text:{text:'フレンドリーファイア',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'味方チームメンバー同士の攻撃の有効化',color:'white'}]}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8,1.0,1.0]},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules2','MAD_TextDisplay_friendlyFireLink']}
$summon minecraft:text_display ~-0.9 ~ ~ {text:{text:'$(text)',color:'$(color)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules2','MAD_TextDisplay_friendlyFire']}

## インタラクション召喚
summon minecraft:interaction ~0.54 ~ ~0.91 {width:1.82,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_TeamRules2','MAD_Interaction_friendlyFireLink']}