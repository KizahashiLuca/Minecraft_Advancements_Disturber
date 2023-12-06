#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/nether/all_effects/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Nether_all_effects matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/nether/all_effects/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Nether_all_effects matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/nether/all_effects/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Nether_all_effects matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/nether/all_effects/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Nether_all_effects matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/nether/all_effects/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Nether_all_effects matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/nether/all_effects/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Nether_all_effects=0}] AD_Nether_all_effects 1
