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
scoreboard players set @a[team=TeamA] AD_nt_blaze_rod 1
scoreboard players add @a[team=TeamA] HasAdvancements 1
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamA] only minecraft:nether/obtain_blaze_rod
tellraw @a[team=TeamA] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.obtain_blaze_rod.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.obtain_blaze_rod.title"},{"translate":"advancements.nether.obtain_blaze_rod.description"}]}]}}]}]}]
