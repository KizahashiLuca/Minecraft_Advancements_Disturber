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
summon minecraft:text_display ~0.775 ~ ~ {text:{text:'支援物資間隔',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'支援物資が開封されてから、次の支援物資が投下されるまでの間隔',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_CarePackageIntervalLink']}
summon minecraft:text_display ~-0.9 ~ ~ {text:{translate:'%s%s',with:[{score:{name:'#mad',objective:'CarePackageInterval'}},{text:'秒'}],color:'dark_green'},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_CarePackageInterval']}

## インタラクション召喚
summon minecraft:interaction ~0.7625 ~ ~0.6875 {width:1.375,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Root','MAD_Interaction_CarePackageIntervalLink']}