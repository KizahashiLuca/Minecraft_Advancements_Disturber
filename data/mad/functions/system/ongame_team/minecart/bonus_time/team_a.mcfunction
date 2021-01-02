#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Give bonus time - red
scoreboard players operation @p[team=TeamA,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += #mad RandomAnswer
tellraw @a[team=TeamA] ["",{"text":"[支援物資]  ","color":"green"},{"text":"赤チーム","color":"red","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamA,tag=Leader] only mad:find_minecart