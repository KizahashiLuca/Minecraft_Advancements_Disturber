#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 31 May 2020
## Version   : α-0.1
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar075 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar075 players @s
bossbar set minecraft:bossbar075 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar075 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar075 value run scoreboard players get @s Second