#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Give bonus time - purple
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad RandomAnswer
tellraw @a[team=TeamE] ["",{"text":"[物資投下] ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":"に","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamE,tag=Leader] only mad:find_minecart