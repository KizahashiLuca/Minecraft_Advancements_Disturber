#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar005 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar005 value run scoreboard players get @s Second
bossbar set minecraft:bossbar005 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]