#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar061 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar061 players @s
bossbar set minecraft:bossbar061 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar061 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar061 value run scoreboard players get @s Second