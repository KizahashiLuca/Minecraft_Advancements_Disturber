#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/end/kill_dragon/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_End_kill_dragon matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/end/kill_dragon/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_End_kill_dragon matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/end/kill_dragon/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_End_kill_dragon matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/end/kill_dragon/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_End_kill_dragon matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/end/kill_dragon/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_End_kill_dragon matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/end/kill_dragon/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_End_kill_dragon=0}] AD_End_kill_dragon 1
