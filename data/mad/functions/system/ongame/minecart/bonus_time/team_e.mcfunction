#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - purple
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad RandomAnswer
scoreboard players add @p[team=TeamE,tag=Leader] GetMinecartCount 1
tellraw @a[team=TeamE] ["",{"text":"[支援物資]  ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamE,tag=Leader] only mad:potage00/find_minecart