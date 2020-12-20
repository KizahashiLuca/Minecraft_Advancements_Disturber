#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar015 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar015 value run scoreboard players get @s Second
bossbar set minecraft:bossbar015 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]