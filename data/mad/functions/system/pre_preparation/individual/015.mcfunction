#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Get time for bossbar
bossbar add mad:bossbar/individual/15 [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
bossbar set mad:bossbar/individual/15 players @s
bossbar set mad:bossbar/individual/15 name [{"text":"生存時間  残り "},{"score":{"name":"@s","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar mad:bossbar/individual/15 max run scoreboard players get @s TimeLimit
execute store result bossbar mad:bossbar/individual/15 value run scoreboard players get @s Second