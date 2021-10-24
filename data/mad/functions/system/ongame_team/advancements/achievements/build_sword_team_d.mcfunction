#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamD] AD_ac_buildsword 1
scoreboard players add @a[team=TeamD] HasAdvancements 1
scoreboard players operation @a[team=TeamD,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamD,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamD] only mad:achievements/build_sword
tellraw @a[team=TeamD] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"いざ突撃！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"いざ突撃！"},{"text":"木材と棒を使い、剣を作る"}]}]}}]}]}]
