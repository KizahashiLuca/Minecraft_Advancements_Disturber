#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set scoreboard
advancement grant @a[team=TeamC] only minecraft:nether/create_full_beacon
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamC,tag=Leader] Second += #mad AddingTime
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.goal","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.create_full_beacon.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.create_full_beacon.title"},{"translate":"advancements.nether.create_full_beacon.description"}]}]}}]}]}]
