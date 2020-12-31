#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Give bonus time - blue
scoreboard players operation @p[team=TeamB,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamB,tag=Leader] TimeLimit += #mad RandomAnswer
tellraw @a[team=TeamB] ["",{"text":"[支援物資]  ","color":"green"},{"text":"青チーム","color":"blue","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamB,tag=Leader] only mad:find_minecart