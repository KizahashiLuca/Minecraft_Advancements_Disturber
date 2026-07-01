#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー計数
scoreboard players add #mad_player NumberOfPlayers 1
execute as @s[predicate=mad:player/team/a] run \
  scoreboard players add #mad_team_a NumberOfPlayers 1
execute as @s[predicate=mad:player/team/b] run \
  scoreboard players add #mad_team_b NumberOfPlayers 1
execute as @s[predicate=mad:player/team/c] run \
  scoreboard players add #mad_team_c NumberOfPlayers 1
execute as @s[predicate=mad:player/team/d] run \
  scoreboard players add #mad_team_d NumberOfPlayers 1
execute as @s[predicate=mad:player/team/indie] run \
  scoreboard players add #mad_indie_player NumberOfPlayers 1
