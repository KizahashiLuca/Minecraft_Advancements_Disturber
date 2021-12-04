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
scoreboard players set @a[team=TeamE] AD_ac_kill_cow 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @a[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only mad:achievements/kill_cow
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"牛転がし","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"牛転がし"},{"text":"革を手に入れる"}]}]}}]}]}]