#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Give bonus time - green
scoreboard players operation @p[team=TeamD,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamD,tag=Leader] TimeLimit += #mad RandomAnswer
tellraw @a[team=TeamD] ["",{"text":"[支援物資]  ","color":"green"},{"text":"緑チーム","color":"green","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamD,tag=Leader] only mad:potage00/find_minecart