#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar028 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar028 players @s
bossbar set minecraft:bossbar028 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar028 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar028 value run scoreboard players get @s Second