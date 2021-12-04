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
scoreboard players set @a[team=TeamB] AD_ad_juke_meadows 1
scoreboard players add @a[team=TeamB] HasAdvancements 1
scoreboard players operation @p[team=TeamB,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamB,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamB] only minecraft:adventure/play_jukebox_in_meadows
tellraw @a[team=TeamB] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.play_jukebox_in_meadows.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.play_jukebox_in_meadows.title"},{"translate":"advancements.adventure.play_jukebox_in_meadows.description"}]}]}}]}]}]
