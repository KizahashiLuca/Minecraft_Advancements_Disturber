#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar - purple
execute store result bossbar minecraft:bossbar_purple max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_purple value run scoreboard players get @s Second
bossbar set minecraft:bossbar_purple name ["",{"text":"紫チーム ","color":"dark_purple","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]