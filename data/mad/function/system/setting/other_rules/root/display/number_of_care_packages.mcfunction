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
summon minecraft:text_display ~0.6625 ~ ~ {text:{text:'支援物資投下数',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'一度に投下される支援物資の個数',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_NumberOfCarePackagesLink']}
summon minecraft:text_display ~-0.9 ~ ~ {text:{translate:'%s%s',with:[{score:{name:'#mad',objective:'NumberOfCarePackages'}},{text:'個'}],color:'dark_green'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_NumberOfCarePackages']}

## インタラクション召喚
summon minecraft:interaction ~0.65 ~ ~0.8 {width:1.6,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_OtherRules','MAD_Interaction_NumberOfCarePackagesLink']}