#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/originals/kill_evoker/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Originals_kill_evoker matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/originals/kill_evoker/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Originals_kill_evoker matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/originals/kill_evoker/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Originals_kill_evoker matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/originals/kill_evoker/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Originals_kill_evoker matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/originals/kill_evoker/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Originals_kill_evoker matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/originals/kill_evoker/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Originals_kill_evoker=0}] AD_Originals_kill_evoker 1
