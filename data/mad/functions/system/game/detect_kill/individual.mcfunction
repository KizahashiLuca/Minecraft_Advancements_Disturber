#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
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
tellraw @s ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"selector":"@s","bold":true},{"selector":"@p[predicate=mad:player/dying,sort=nearest]","bold":true},{"score":{"name":"@p[predicate=mad:player/dying,sort=nearest]","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @p[predicate=mad:player/dying,sort=nearest] ["",{"translate":"%s が %s を倒し %s%s 取得しました。","with":[{"selector":"@s","bold":true},{"selector":"@p[predicate=mad:player/dying,sort=nearest]","bold":true},{"score":{"name":"@p[predicate=mad:player/dying,sort=nearest]","objective":"SecondPerSurvive"},"bold":true},{"text":"秒","bold":true}],"color":"white","bold":false,"italic":false}]