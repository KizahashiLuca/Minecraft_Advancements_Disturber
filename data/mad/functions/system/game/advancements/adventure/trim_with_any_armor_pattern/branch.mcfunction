#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/adventure/trim_with_any_armor_pattern/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Adventure_trim_with_any_armor_pattern matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/adventure/trim_with_any_armor_pattern/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Adventure_trim_with_any_armor_pattern matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/adventure/trim_with_any_armor_pattern/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Adventure_trim_with_any_armor_pattern matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/adventure/trim_with_any_armor_pattern/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Adventure_trim_with_any_armor_pattern matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/adventure/trim_with_any_armor_pattern/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Adventure_trim_with_any_armor_pattern matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/adventure/trim_with_any_armor_pattern/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Adventure_trim_with_any_armor_pattern=0}] AD_Adventure_trim_with_any_armor_pattern 1
