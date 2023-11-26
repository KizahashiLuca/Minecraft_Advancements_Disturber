#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - team b
scoreboard players operation #mad_team_b Second += @s RandomAnswer
scoreboard players operation #mad_team_b TimeLimit += @s RandomAnswer
scoreboard players add #mad_team_b GetMinecartCount 1
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"[支援物資]  %s に %s%s のボーナスタイムが付与されました。","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"@s","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"green","bold":false,"italic":false}]

## Grant advancement
advancement grant @p[predicate=mad:player/leader/b] only mad:originals/find_minecart