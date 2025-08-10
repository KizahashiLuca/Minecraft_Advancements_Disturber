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
summon minecraft:text_display ~0.775 ~ ~ {text:{text:'撃破ボーナス',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'プレイヤーをキルしたときに獲得するボーナス時間',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_BonusTimeOfKillLink']}
summon minecraft:text_display ~-0.9 ~ ~ {text:{translate:'%s%s',with:[{score:{name:'#mad',objective:'BonusTimeOfKill'}},{text:'秒'}],color:'dark_green'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_BonusTimeOfKill']}

## インタラクション召喚
summon minecraft:interaction ~0.7625 ~ ~0.6875 {width:1.375,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_OtherRules','MAD_Interaction_BonusTimeOfKillLink']}