#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Give bonus time - purple
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad RandomAnswer
tellraw @a[team=TeamE] ["",{"text":"[支援物資]  ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamE,tag=Leader] only mad:potage00/find_minecart