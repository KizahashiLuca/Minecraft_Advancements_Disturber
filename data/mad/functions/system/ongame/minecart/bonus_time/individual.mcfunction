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
scoreboard players operation @p[tag=GiveTimeRandomly] Second += #mad RandomAnswer
scoreboard players operation @p[tag=GiveTimeRandomly] TimeLimit += #mad RandomAnswer
scoreboard players add @p[tag=GiveTimeRandomly] GetMinecartCount 1
tellraw @p[tag=GiveTimeRandomly] ["",{"text":"[支援物資]  ","color":"green"},{"selector":"@p[tag=GiveTimeRandomly]","color":"green","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[tag=GiveTimeRandomly] only mad:potage00/find_minecart