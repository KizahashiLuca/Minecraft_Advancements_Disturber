#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add a tag
execute as @s[team=TeamA] run tag @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamA,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamB] run tag @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamB,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamC] run tag @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamC,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamD] run tag @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamD,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamE] run tag @e[type=minecraft:armor_stand,tag=RespawnBanner,team=TeamE,sort=nearest,limit=1] add DetectTransmitter