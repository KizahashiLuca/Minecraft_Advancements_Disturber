#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamA] AD_ac_buildsword 1
scoreboard players add @a[team=TeamA] HasAdvancements 1
scoreboard players operation @a[team=TeamA,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamA,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamA] only mad:achievements/build_sword
tellraw @a[team=TeamA] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"いざ突撃！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"いざ突撃！"},{"text":"木材と棒を使い、剣を作る"}]}]}}]}]}]
