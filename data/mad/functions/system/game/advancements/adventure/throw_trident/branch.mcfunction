#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/adventure/throw_trident/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/adventure/throw_trident/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/adventure/throw_trident/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/adventure/throw_trident/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/adventure/throw_trident/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/adventure/throw_trident/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Adventure_throw_trident=0}] AD_Adventure_throw_trident 1
