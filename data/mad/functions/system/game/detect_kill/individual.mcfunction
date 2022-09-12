#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect killed
scoreboard players operation @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive = @p[predicate=mad:player/dying,sort=nearest] Second
scoreboard players operation @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive /= #mad 2
scoreboard players operation @s Second += @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive
scoreboard players operation @s TimeLimit += @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive
scoreboard players operation @s GetTimeLimit += @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive
scoreboard players operation @s Kill += @s KillTemp
scoreboard players set @s KillTemp 0

## Send messages
tellraw @s ["",{"translate":"[時間移動]  %s から %s%s 奪いました。","with":[{"selector":"@p[predicate=mad:player/dying,sort=nearest]","bold":true},{"score":{"name":"@p[predicate=mad:player/dying,sort=nearest]","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @p[predicate=mad:player/dying,sort=nearest] ["",{"translate":"%s に殺害されました。","with":[{"selector":"@s"}],"color":"white","bold":false,"italic":false}]