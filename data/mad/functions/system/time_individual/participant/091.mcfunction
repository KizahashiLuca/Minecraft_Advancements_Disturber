#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Store time for bossbar
execute store result bossbar minecraft:bossbar091 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar091 value run scoreboard players get @s Second
bossbar set minecraft:bossbar091 name [{"text":"残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]