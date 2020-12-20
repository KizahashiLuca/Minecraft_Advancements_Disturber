#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar024 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar024 players @s
bossbar set minecraft:bossbar024 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar024 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar024 value run scoreboard players get @s Second