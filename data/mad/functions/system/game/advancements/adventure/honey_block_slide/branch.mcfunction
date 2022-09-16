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
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/adventure/honey_block_slide/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Adventure_honey_block_slide matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/adventure/honey_block_slide/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Adventure_honey_block_slide matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/adventure/honey_block_slide/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Adventure_honey_block_slide matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/adventure/honey_block_slide/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Adventure_honey_block_slide matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/adventure/honey_block_slide/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Adventure_honey_block_slide matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/adventure/honey_block_slide/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Adventure_honey_block_slide=0}] AD_Adventure_honey_block_slide 1
