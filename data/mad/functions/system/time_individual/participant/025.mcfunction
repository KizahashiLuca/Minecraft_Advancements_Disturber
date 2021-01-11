#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar025 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar025 value run scoreboard players get @s Second
bossbar set minecraft:bossbar025 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]