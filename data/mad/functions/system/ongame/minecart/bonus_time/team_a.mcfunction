#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - red
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad RandomAnswer
scoreboard players add @p[team=TeamA,tag=Leader] GetMinecartCount 1
tellraw @a[team=TeamA] ["",{"text":"[支援物資]  ","color":"green"},{"text":"赤チーム","color":"red","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamA,tag=Leader] only mad:potage00/find_minecart