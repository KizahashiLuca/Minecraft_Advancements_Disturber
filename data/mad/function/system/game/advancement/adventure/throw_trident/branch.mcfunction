#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム分岐
execute if predicate mad:gamerule/match_mode/individual/ as @s run function mad:system/game/advancement/adventure/throw_trident/individual
execute if predicate mad:gamerule/match_mode/team if score #mad_team_a Advancements_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancement/adventure/throw_trident/team with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team if score #mad_team_b Advancements_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancement/adventure/throw_trident/team with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team if score #mad_team_c Advancements_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancement/adventure/throw_trident/team with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team if score #mad_team_d Advancements_Adventure_throw_trident matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancement/adventure/throw_trident/team with storage mad: team.d

## スコアボード設定
scoreboard players set @s[scores={Advancements_Adventure_throw_trident=0}] Advancements_Adventure_throw_trident 1
