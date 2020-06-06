#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar004 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar004 value run scoreboard players get @s Second
bossbar set minecraft:bossbar004 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]