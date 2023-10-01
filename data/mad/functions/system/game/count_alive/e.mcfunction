#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad_team_e NumOfTeamPlayer 0

## Count the alive
execute as @a[predicate=mad:player/alive/e] run scoreboard players add #mad_team_e NumOfTeamPlayer 1

## Spectate
execute as @a[predicate=mad:player/dead/e] at @s run function mad:system/game/spectate_player/e

## Detect team end
execute unless entity @p[predicate=mad:player/alive/e] run function mad:system/game/set_team_dead/e

## Calculate time per players
scoreboard players operation #mad_team_e SecondPerSurvive = #mad KillTime