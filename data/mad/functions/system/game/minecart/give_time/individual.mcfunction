#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - purple
scoreboard players operation @a[predicate=mad:player/give_time] Second += @s RandomAnswer
scoreboard players operation @a[predicate=mad:player/give_time] TimeLimit += @s RandomAnswer
scoreboard players add @a[predicate=mad:player/give_time] GetMinecartCount 1
tellraw @a[predicate=mad:player/give_time] ["",{"translate":"[支援物資]  %s に %s%s のボーナスタイムが付与されました。","with":[{"selector":"@a[predicate=mad:player/give_time]","color":"green","bold":true},{"score":{"name":"@s","objective":"RandomAnswer"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"green","bold":false,"italic":false}]

## Grant advancement
advancement grant @p[predicate=mad:player/give_time] only mad:originals/find_minecart