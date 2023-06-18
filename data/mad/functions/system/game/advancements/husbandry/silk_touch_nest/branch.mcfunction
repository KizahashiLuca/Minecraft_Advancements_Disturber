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
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/husbandry/silk_touch_nest/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Husbandry_silk_touch_nest matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/husbandry/silk_touch_nest/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Husbandry_silk_touch_nest matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/husbandry/silk_touch_nest/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Husbandry_silk_touch_nest matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/husbandry/silk_touch_nest/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Husbandry_silk_touch_nest matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/husbandry/silk_touch_nest/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Husbandry_silk_touch_nest matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/husbandry/silk_touch_nest/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Husbandry_silk_touch_nest=0}] AD_Husbandry_silk_touch_nest 1
