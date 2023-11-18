#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/husbandry/allay_deliver_item_to_player/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Husbandry_allay_deliver_item_to_player matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/husbandry/allay_deliver_item_to_player/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Husbandry_allay_deliver_item_to_player matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/husbandry/allay_deliver_item_to_player/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Husbandry_allay_deliver_item_to_player matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/husbandry/allay_deliver_item_to_player/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Husbandry_allay_deliver_item_to_player matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/husbandry/allay_deliver_item_to_player/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e AD_Husbandry_allay_deliver_item_to_player matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/husbandry/allay_deliver_item_to_player/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Husbandry_allay_deliver_item_to_player=0}] AD_Husbandry_allay_deliver_item_to_player 1
