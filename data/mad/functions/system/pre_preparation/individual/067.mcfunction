#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Get time for bossbar
bossbar add minecraft:bossbar067 [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar067 players @s
bossbar set minecraft:bossbar067 name [{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar067 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar067 value run scoreboard players get @s Second