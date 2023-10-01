#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - team d
scoreboard players operation #mad_team_d Second += @s RandomAnswer
scoreboard players operation #mad_team_d TimeLimit += @s RandomAnswer
scoreboard players add #mad_team_d GetMinecartCount 1
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"[支援物資]  %s に %s%s のボーナスタイムが付与されました。","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"@s","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"green","bold":false,"italic":false}]

## Grant advancement
advancement grant @p[predicate=mad:player/leader/d] only mad:originals/find_minecart