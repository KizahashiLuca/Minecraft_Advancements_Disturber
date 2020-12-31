#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Add a tag
tag @s add DetectEmergencyCall

## Message emergency call
execute as @s[team=TeamA] run tellraw @a[team=TeamA,tag=!DetectEmergencyCall] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]
execute as @s[team=TeamB] run tellraw @a[team=TeamB,tag=!DetectEmergencyCall] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]
execute as @s[team=TeamC] run tellraw @a[team=TeamC,tag=!DetectEmergencyCall] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]
execute as @s[team=TeamD] run tellraw @a[team=TeamD,tag=!DetectEmergencyCall] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]
execute as @s[team=TeamE] run tellraw @a[team=TeamE,tag=!DetectEmergencyCall] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]

## Remove a tag
tag @s remove DetectEmergencyCall