#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamD] AD_pg_near_bord 1
scoreboard players add @a[team=TeamD] HasAdvancements 1
scoreboard players operation @p[team=TeamD,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamD,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamD] only mad:in_this_corner_of_the_world
tellraw @a[team=TeamD] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"この世界の片隅に","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"この世界の片隅に"},{"text":"ボーダーの端へ到達"}]}]}}]}]}]
