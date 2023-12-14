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
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/adventure/trade/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a AD_Adventure_trade matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/adventure/trade/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b AD_Adventure_trade matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/adventure/trade/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c AD_Adventure_trade matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/adventure/trade/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d AD_Adventure_trade matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/adventure/trade/team/d

## Set scoreboard
scoreboard players set @s[scores={AD_Adventure_trade=0}] AD_Adventure_trade 1
