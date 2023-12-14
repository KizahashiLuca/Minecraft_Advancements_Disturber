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
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/end/dragon_egg/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_End_dragon_egg matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/end/dragon_egg/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_End_dragon_egg matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/end/dragon_egg/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_End_dragon_egg matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/end/dragon_egg/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_End_dragon_egg matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/end/dragon_egg/team/d

## Set scoreboard
scoreboard players set @s[scores={AD_End_dragon_egg=0}] AD_End_dragon_egg 1
