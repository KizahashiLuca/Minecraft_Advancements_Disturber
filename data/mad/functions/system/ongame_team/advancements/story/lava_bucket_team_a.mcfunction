#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamA] AD_mc_lava_bucke 1
scoreboard players add @a[team=TeamA] HasAdvancements 1
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamA] only minecraft:story/lava_bucket
tellraw @a[team=TeamA] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.lava_bucket.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.lava_bucket.title"},{"translate":"advancements.story.lava_bucket.description"}]}]}}]}]}]
