#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar083 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar083 value run scoreboard players get @s Second
bossbar set minecraft:bossbar083 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]