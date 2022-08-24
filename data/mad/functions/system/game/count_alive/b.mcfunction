#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
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
execute if score #mad_team_b Second > #mad KillTime run scoreboard players operation #mad_team_b SecondPerSurvive = #mad KillTime
execute if score #mad_team_b Second <= #mad KillTime run scoreboard players operation #mad_team_b SecondPerSurvive = #mad_team_b Second