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
scoreboard players set @a[team=TeamC] AD_ac_kill_cow 1
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @a[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamC,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamC] only mad:achievements/kill_cow
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"牛転がし","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"牛転がし"},{"text":"革を手に入れる"}]}]}}]}]}]
