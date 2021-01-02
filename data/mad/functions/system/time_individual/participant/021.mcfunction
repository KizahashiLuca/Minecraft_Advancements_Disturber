#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar021 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar021 value run scoreboard players get @s Second
bossbar set minecraft:bossbar021 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]