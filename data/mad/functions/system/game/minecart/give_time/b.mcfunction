#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - team b
scoreboard players operation #mad_team_b Second += @s RandomAnswer
scoreboard players operation #mad_team_b TimeLimit += @s RandomAnswer
scoreboard players add #mad_team_b GetMinecartCount 1
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"[支援物資]  %s に %s%s のボーナスタイムが付与されました。","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"@s","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"green","bold":false,"italic":false}]

## Grant advancement
advancement grant @p[predicate=mad:player/leader/b] only mad:originals/find_minecart