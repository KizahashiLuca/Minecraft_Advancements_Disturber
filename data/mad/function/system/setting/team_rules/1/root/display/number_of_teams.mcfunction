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
summon minecraft:text_display ~1.0 ~ ~ {text:{text:'チーム数',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'チーム戦でのチームの数',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules1','MAD_TextDisplay_NumberOfTeamsLink']}
summon minecraft:text_display ~-0.9 ~ ~ {text:{translate:'%s%s',with:[{score:{name:'#mad',objective:'NumberOfTeams'}},{text:'チーム'}],color:'dark_green'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules1','MAD_TextDisplay_NumberOfTeams']}

## インタラクション召喚
summon minecraft:interaction ~0.9875 ~ ~0.4625 {width:0.925,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_TeamRules1','MAD_Interaction_NumberOfTeamsLink']}