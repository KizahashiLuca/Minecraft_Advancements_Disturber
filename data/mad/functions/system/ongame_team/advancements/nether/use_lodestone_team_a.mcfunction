#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamA] AD_nt_lodestone 1
scoreboard players add @a[team=TeamA] HasAdvancements 1
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamA] only minecraft:nether/use_lodestone
tellraw @a[team=TeamA] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.nether.use_lodestone.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.nether.use_lodestone.title"},{"translate":"advancements.nether.use_lodestone.description"}]}]}}]}]}]
