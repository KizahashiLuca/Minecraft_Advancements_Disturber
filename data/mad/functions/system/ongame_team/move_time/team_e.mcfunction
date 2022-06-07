#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
execute as @s[team=TeamA] run tag @p[team=TeamA,tag=Leader] add CalculateTime
execute as @s[team=TeamB] run tag @p[team=TeamB,tag=Leader] add CalculateTime
execute as @s[team=TeamC] run tag @p[team=TeamC,tag=Leader] add CalculateTime
execute as @s[team=TeamD] run tag @p[team=TeamD,tag=Leader] add CalculateTime

## Scoreboard
scoreboard players operation @p[team=TeamE,tag=Leader] Second += @p[tag=Leader,tag=CalculateTime] SecondPerSurvive
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += @p[tag=Leader,tag=CalculateTime] SecondPerSurvive
scoreboard players operation @p[team=TeamE,tag=Leader] GetTimeLimit += @p[tag=Leader,tag=CalculateTime] SecondPerSurvive
scoreboard players operation @p[tag=Leader,tag=CalculateTime] Second -= @p[tag=Leader,tag=CalculateTime] SecondPerSurvive

## Send message
execute as @s[team=TeamA] run tellraw @a[team=TeamA] ["",{"text":"[時間移動]  ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に ","color":"green"},{"score":{"name":"@p[tag=Leader,tag=CalculateTime]","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":" 秒奪われました。","color":"green"}]
execute as @s[team=TeamB] run tellraw @a[team=TeamB] ["",{"text":"[時間移動]  ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に ","color":"green"},{"score":{"name":"@p[tag=Leader,tag=CalculateTime]","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":" 秒奪われました。","color":"green"}]
execute as @s[team=TeamC] run tellraw @a[team=TeamC] ["",{"text":"[時間移動]  ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に ","color":"green"},{"score":{"name":"@p[tag=Leader,tag=CalculateTime]","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":" 秒奪われました。","color":"green"}]
execute as @s[team=TeamD] run tellraw @a[team=TeamD] ["",{"text":"[時間移動]  ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に ","color":"green"},{"score":{"name":"@p[tag=Leader,tag=CalculateTime]","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":" 秒奪われました。","color":"green"}]
execute as @s[team=!TeamE] run tellraw @a[team=TeamE] ["",{"text":"[時間移動]  ","color":"green"},{"selector":"@s","bold":true},{"text":" から ","color":"green"},{"score":{"name":"@p[tag=Leader,tag=CalculateTime]","objective":"SecondPerSurvive"},"color":"green","bold":true},{"text":" 秒奪いました。","color":"green"}]

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true}]
title @a times 20 80 20

## Detect death
gamemode spectator @s
scoreboard players set @s Death 1
scoreboard players set @s Phase 22

## replaceitem
loot replace entity @s inventory.0 loot minecraft:entities/player

## Revoke advancements
advancement revoke @a only mad:system/ongame_team/be_hit_by_team_e

## Remove tag
tag @a remove CalculateTime