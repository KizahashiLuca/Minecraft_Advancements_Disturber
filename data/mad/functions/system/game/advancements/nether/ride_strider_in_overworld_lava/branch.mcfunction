#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/nether/ride_strider_in_overworld_lava/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Nether_ride_strider_in_overworld_lava matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/nether/ride_strider_in_overworld_lava/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Nether_ride_strider_in_overworld_lava matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/nether/ride_strider_in_overworld_lava/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Nether_ride_strider_in_overworld_lava matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/nether/ride_strider_in_overworld_lava/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Nether_ride_strider_in_overworld_lava matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/nether/ride_strider_in_overworld_lava/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Nether_ride_strider_in_overworld_lava matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/nether/ride_strider_in_overworld_lava/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Nether_ride_strider_in_overworld_lava=0}] AD_Nether_ride_strider_in_overworld_lava 1
