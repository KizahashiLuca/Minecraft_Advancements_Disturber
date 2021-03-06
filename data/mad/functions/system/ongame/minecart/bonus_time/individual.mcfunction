#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Give bonus time - purple
scoreboard players operation @p[tag=GiveTimeRandomly] Second += #mad RandomAnswer
scoreboard players operation @p[tag=GiveTimeRandomly] TimeLimit += #mad RandomAnswer
tellraw @p[tag=GiveTimeRandomly] ["",{"text":"[支援物資]  ","color":"green"},{"selector":"@p[tag=GiveTimeRandomly]","color":"green","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[tag=GiveTimeRandomly] only mad:potage00/find_minecart