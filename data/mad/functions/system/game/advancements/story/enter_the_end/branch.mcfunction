#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/story/enter_the_end/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Story_enter_the_end matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/story/enter_the_end/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Story_enter_the_end matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/story/enter_the_end/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Story_enter_the_end matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/story/enter_the_end/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Story_enter_the_end matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/story/enter_the_end/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Story_enter_the_end matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/story/enter_the_end/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Story_enter_the_end=0}] AD_Story_enter_the_end 1
