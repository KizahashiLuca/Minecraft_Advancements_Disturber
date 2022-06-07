#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamE] AD_ac_buildsword 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @a[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only mad:achievements/build_sword
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"いざ突撃！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"いざ突撃！"},{"text":"木材と棒を使い、剣を作る"}]}]}}]}]}]
