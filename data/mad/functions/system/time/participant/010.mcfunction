#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar010 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar010 value run scoreboard players get @s Second
bossbar set minecraft:bossbar010 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]