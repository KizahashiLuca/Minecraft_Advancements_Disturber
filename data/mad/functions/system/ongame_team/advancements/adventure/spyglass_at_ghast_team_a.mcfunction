#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamA] AD_Adventure_spyglass_at_ghast 1
scoreboard players add @a[team=TeamA] HasAdvancements 1
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamA] only minecraft:adventure/spyglass_at_ghast
tellraw @a[team=TeamA] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.spyglass_at_ghast.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.spyglass_at_ghast.title"},{"translate":"advancements.adventure.spyglass_at_ghast.description"}]}]}}]}]}]
