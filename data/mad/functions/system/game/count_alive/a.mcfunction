#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad_team_a NumOfTeamPlayer 0

## Count the alive
execute as @a[predicate=mad:player/alive/a] run scoreboard players add #mad_team_a NumOfTeamPlayer 1

## Spectate
execute as @a[predicate=mad:player/dead/a] at @s run function mad:system/game/spectate_player/a

## Detect team end
execute unless entity @p[predicate=mad:player/alive/a] run function mad:system/game/set_team_dead/a

## Calculate time per players
scoreboard players operation #mad_team_a SecondPerSurvive = #mad KillTime