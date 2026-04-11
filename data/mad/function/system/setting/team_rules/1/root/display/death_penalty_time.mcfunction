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
summon minecraft:text_display ~0.6625 ~ ~ {text:{text:'死亡ペナルティ',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'キル以外で死亡したときに失うペナルティ時間',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules1','MAD_TextDisplay_DeathPenaltyTimeLink']}
summon minecraft:text_display ~-0.9 ~ ~ {text:{translate:'%s%s',with:[{score:{name:'#mad',objective:'DeathPenaltyTime'}},{text:'秒'}],color:'dark_green'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules1','MAD_TextDisplay_DeathPenaltyTime']}

## インタラクション召喚
summon minecraft:interaction ~0.65 ~ ~0.8 {width:1.6,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_TeamRules1','MAD_Interaction_DeathPenaltyTimeLink']}