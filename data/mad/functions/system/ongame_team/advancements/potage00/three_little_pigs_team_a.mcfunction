#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamA] AD_pg_3litpigs 1
scoreboard players add @a[team=TeamA] HasAdvancements 1
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamA] only mad:three_little_pigs
tellraw @a[team=TeamA] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"3匹の子豚","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"3匹の子豚"},{"text":"干し草の俵、木材、レンガブロックを集める"}]}]}}]}]}]
