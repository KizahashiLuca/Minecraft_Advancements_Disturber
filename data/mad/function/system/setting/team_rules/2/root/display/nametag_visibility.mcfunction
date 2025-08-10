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
summon minecraft:text_display ~0.6625 ~ ~ {text:{text:'ネームタグ表示',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'味方チームメンバーのネームタグを頭の上に表示',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules2','MAD_TextDisplay_nametagVisibilityLink']}
$summon minecraft:text_display ~-0.9 ~ ~ {text:{text:'$(text)',color:'$(color)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules2','MAD_TextDisplay_nametagVisibility']}

## インタラクション召喚
summon minecraft:interaction ~0.65 ~ ~0.8 {width:1.6,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_TeamRules2','MAD_Interaction_nametagVisibilityLink']}