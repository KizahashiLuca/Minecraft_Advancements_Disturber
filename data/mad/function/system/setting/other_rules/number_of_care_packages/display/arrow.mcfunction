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
$summon minecraft:text_display ~ ~ ~ {text:{text:'$(text)',color:'$(color)'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25,1.25,1.0]},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_NumberOfCarePackages','MAD_TextDisplay_NumberOfCarePackages$(direction)Arrow']}

## インタラクション召喚
$summon minecraft:interaction ~-0.0155 ~ ~0.14 {width:0.28,height:0.3125,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_NumberOfCarePackages','MAD_Interaction_NumberOfCarePackages$(direction)Arrow']}