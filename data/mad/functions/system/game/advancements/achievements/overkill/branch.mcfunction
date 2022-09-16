#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/achievements/overkill/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Achievements_overkill matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/achievements/overkill/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Achievements_overkill matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/achievements/overkill/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Achievements_overkill matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/achievements/overkill/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Achievements_overkill matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/achievements/overkill/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Achievements_overkill matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/achievements/overkill/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Achievements_overkill=0}] AD_Achievements_overkill 1
