#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

execute as @s[predicate=mad:player/team/a] run tellraw @a ["",{"text":"leave team "},{"text":"TeamA","color":"red"}]
execute as @s[predicate=mad:player/team/b] run tellraw @a ["",{"text":"leave team "},{"text":"TeamB","color":"blue"}]
execute as @s[predicate=mad:player/team/c] run tellraw @a ["",{"text":"leave team "},{"text":"TeamC","color":"yellow"}]
execute as @s[predicate=mad:player/team/d] run tellraw @a ["",{"text":"leave team "},{"text":"TeamD","color":"green"}]
execute as @s[predicate=mad:player/team/e] run tellraw @a ["",{"text":"leave team "},{"text":"TeamE","color":"dark_purple"}]

## Leave from team
team leave @s

## Set inventory
function mad:system/begin/team_member/change_to