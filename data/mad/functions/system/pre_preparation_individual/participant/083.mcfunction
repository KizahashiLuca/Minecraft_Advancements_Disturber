#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar083 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar083 players @s
bossbar set minecraft:bossbar083 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar083 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar083 value run scoreboard players get @s Second