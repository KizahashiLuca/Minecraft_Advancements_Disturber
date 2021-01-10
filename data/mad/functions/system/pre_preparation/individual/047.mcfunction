#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar047 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar047 players @s
bossbar set minecraft:bossbar047 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar047 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar047 value run scoreboard players get @s Second