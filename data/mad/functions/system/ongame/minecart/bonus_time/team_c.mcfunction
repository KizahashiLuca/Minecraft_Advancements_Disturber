#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - yellow
scoreboard players operation @p[team=TeamC,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += #mad RandomAnswer
scoreboard players add @p[team=TeamC,tag=Leader] GetMinecartCount 1
tellraw @a[team=TeamC] ["",{"text":"[支援物資]  ","color":"green"},{"text":"黄チーム","color":"yellow","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamC,tag=Leader] only mad:potage00/find_minecart