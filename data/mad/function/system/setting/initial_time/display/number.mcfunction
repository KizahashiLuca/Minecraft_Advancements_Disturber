#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード算出
scoreboard players operation #mad Digit01000 = #mad InitialTime
scoreboard players operation #mad Digit01000 /= #mad 1000
scoreboard players operation #mad Digit00100 = #mad InitialTime
scoreboard players operation #mad Digit00100 /= #mad 100
scoreboard players operation #mad Digit00100 %= #mad 10
scoreboard players operation #mad Digit00010 = #mad InitialTime
scoreboard players operation #mad Digit00010 /= #mad 10
scoreboard players operation #mad Digit00010 %= #mad 10
scoreboard players operation #mad Digit00001 = #mad InitialTime
scoreboard players operation #mad Digit00001 %= #mad 10

## テキストディスプレイ召喚
$summon minecraft:text_display ~ ~ ~ {text:{score:{name:'#mad',objective:'Digit$(digit)'},color:'black'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5,1.5,1.0]},background:0,alignment:'center',Rotation:[180.0f,0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_InitialTime','MAD_Interaction_InitialTimeDigit']}