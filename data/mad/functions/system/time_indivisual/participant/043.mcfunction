#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar043 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar043 value run scoreboard players get @s Second
bossbar set minecraft:bossbar043 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]