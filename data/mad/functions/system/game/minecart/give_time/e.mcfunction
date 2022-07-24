#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - team e
scoreboard players operation #mad_team_e Second += @s RandomAnswer
scoreboard players operation #mad_team_e TimeLimit += @s RandomAnswer
scoreboard players add #mad_team_e GetMinecartCount 1
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"[支援物資]  %s に %s%s のボーナスタイムが付与されました。","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"score":{"name":"@s","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"green","bold":false,"italic":false}]

## Grant advancement
advancement grant @p[predicate=mad:player/leader/e] only mad:originals/find_minecart