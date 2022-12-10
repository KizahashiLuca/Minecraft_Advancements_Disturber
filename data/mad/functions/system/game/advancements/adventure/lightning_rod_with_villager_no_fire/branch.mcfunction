#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/adventure/lightning_rod_with_villager_no_fire/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Adventure_lightning_rod_with_villager_no_fire matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/adventure/lightning_rod_with_villager_no_fire/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Adventure_lightning_rod_with_villager_no_fire matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/adventure/lightning_rod_with_villager_no_fire/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Adventure_lightning_rod_with_villager_no_fire matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/adventure/lightning_rod_with_villager_no_fire/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Adventure_lightning_rod_with_villager_no_fire matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/adventure/lightning_rod_with_villager_no_fire/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Adventure_lightning_rod_with_villager_no_fire matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/adventure/lightning_rod_with_villager_no_fire/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Adventure_lightning_rod_with_villager_no_fire=0}] AD_Adventure_lightning_rod_with_villager_no_fire 1
