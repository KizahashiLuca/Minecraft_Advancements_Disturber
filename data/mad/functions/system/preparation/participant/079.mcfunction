#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar079 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar079 players @s
bossbar set minecraft:bossbar079 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar079 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar079 value run scoreboard players get @s Second