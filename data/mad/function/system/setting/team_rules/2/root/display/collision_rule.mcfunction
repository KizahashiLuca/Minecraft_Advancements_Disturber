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
summon minecraft:text_display ~0.8875 ~ ~ {text:{text:'当たり判定',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'味方チームメンバー同士の当たり判定',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules2','MAD_TextDisplay_collisionRuleLink']}
$summon minecraft:text_display ~-0.9 ~ ~ {text:{text:'$(text)',color:'$(color)'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules2','MAD_TextDisplay_collisionRule']}

## インタラクション召喚
summon minecraft:interaction ~0.875 ~ ~0.575 {width:1.15,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_TeamRules2','MAD_Interaction_collisionRuleLink']}