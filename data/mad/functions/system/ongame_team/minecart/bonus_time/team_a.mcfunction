#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Give bonus time - red
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad RandomAnswer
tellraw @a[team=TeamA] ["",{"text":"[物資投下] ","color":"green"},{"text":"赤チーム","color":"red","bold":true},{"text":"に","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamA,tag=Leader] only mad:find_minecart