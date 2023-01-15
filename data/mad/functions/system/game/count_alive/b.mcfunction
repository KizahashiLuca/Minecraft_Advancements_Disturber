#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad_team_b NumOfTeamPlayer 0

## Count the alive
execute as @a[predicate=mad:player/alive/b] run scoreboard players add #mad_team_b NumOfTeamPlayer 1

## Spectate
execute as @a[predicate=mad:player/dead/b] at @s run function mad:system/game/spectate_player/b

## Detect team end
execute unless entity @p[predicate=mad:player/alive/b] run function mad:system/game/set_team_dead/b

## Calculate time per players
scoreboard players operation #mad_team_b SecondPerSurvive = #mad KillTime