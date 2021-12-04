#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamB] AD_ac_buildsword 1
scoreboard players add @a[team=TeamB] HasAdvancements 1
scoreboard players operation @a[team=TeamB,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamB,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamB] only mad:achievements/build_sword
tellraw @a[team=TeamB] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"いざ突撃！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"いざ突撃！"},{"text":"木材と棒を使い、剣を作る"}]}]}}]}]}]
