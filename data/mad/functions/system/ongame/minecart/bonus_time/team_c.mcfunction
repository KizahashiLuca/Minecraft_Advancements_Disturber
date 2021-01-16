#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Give bonus time - yellow
scoreboard players operation @p[team=TeamC,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += #mad RandomAnswer
tellraw @a[team=TeamC] ["",{"text":"[支援物資]  ","color":"green"},{"text":"黄チーム","color":"yellow","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamC,tag=Leader] only mad:find_minecart