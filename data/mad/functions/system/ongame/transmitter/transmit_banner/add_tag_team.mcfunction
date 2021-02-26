#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add a tag
execute as @s[team=TeamA] run tag @e[predicate=mad:ongame/respawn_banner,team=TeamA,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamB] run tag @e[predicate=mad:ongame/respawn_banner,team=TeamB,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamC] run tag @e[predicate=mad:ongame/respawn_banner,team=TeamC,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamD] run tag @e[predicate=mad:ongame/respawn_banner,team=TeamD,sort=nearest,limit=1] add DetectTransmitter
execute as @s[team=TeamE] run tag @e[predicate=mad:ongame/respawn_banner,team=TeamE,sort=nearest,limit=1] add DetectTransmitter