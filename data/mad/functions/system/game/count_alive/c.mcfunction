#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad_team_c NumOfTeamPlayer 0

## Count the alive
execute as @a[predicate=mad:player/alive/c] run scoreboard players add #mad_team_c NumOfTeamPlayer 1

## Spectate
execute as @a[predicate=mad:player/dead/c] at @s run function mad:system/game/spectate_player/c

## Detect team end
execute unless entity @p[predicate=mad:player/alive/c] run function mad:system/game/set_team_dead/c

## Calculate time per players
scoreboard players operation #mad_team_c SecondPerSurvive = #mad_team_c Second
scoreboard players operation #mad_team_c SecondPerSurvive /= #mad_team_c NumOfTeamPlayer