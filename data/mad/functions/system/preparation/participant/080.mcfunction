#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar080 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar080 players @s
bossbar set minecraft:bossbar080 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar080 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar080 value run scoreboard players get @s Second