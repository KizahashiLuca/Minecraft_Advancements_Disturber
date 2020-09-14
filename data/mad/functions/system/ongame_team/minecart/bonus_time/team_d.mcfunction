#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Give bonus time - green
scoreboard players operation @p[team=TeamD,tag=Leader] Second += #mad RandomAnswer
tellraw @a[team=TeamD] ["",{"text":"[物資投下] ","color":"green"},{"text":"緑チーム","color":"green","bold":true},{"text":"に","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒のボーナスタイムが付与されました。","color":"green"}]