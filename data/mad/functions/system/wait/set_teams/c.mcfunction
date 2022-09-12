#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @p[predicate=mad:player/team/c,sort=random] add MAD_Leader

## Set dead team flag
scoreboard players set #mad_team_c DeadOwnTeam 0

## Set bossbar - team red
bossbar add minecraft:bossbar_team_c ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"黄チーム","color":"yellow","bold":true},{"score":{"name":"#mad_team_c","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set minecraft:bossbar_team_c color white
bossbar set minecraft:bossbar_team_c style notched_10
bossbar set minecraft:bossbar_team_c visible true
execute store result bossbar minecraft:bossbar_team_c max run scoreboard players get #mad_team_c TimeLimit
execute store result bossbar minecraft:bossbar_team_c value run scoreboard players get #mad_team_c Second

## Set gamerule - friendlyFire
execute if predicate mad:gamerules/team_match/friendly_fire/true run team modify TeamC friendlyFire true
execute if predicate mad:gamerules/team_match/friendly_fire/false run team modify TeamC friendlyFire false
## Set gamerule - collisionRule
execute if predicate mad:gamerules/team_match/collision_rule/true run team modify TeamC collisionRule always
execute if predicate mad:gamerules/team_match/collision_rule/false run team modify TeamC collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if predicate mad:gamerules/team_match/nametag_visibility/true run team modify TeamC nametagVisibility hideForOtherTeams
execute if predicate mad:gamerules/team_match/nametag_visibility/false run team modify TeamC nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if predicate mad:gamerules/team_match/see_friendly_invisibles/true run team modify TeamC seeFriendlyInvisibles true
execute if predicate mad:gamerules/team_match/see_friendly_invisibles/false run team modify TeamC seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if predicate mad:gamerules/team_match/death_message_visibility/true run team modify TeamC deathMessageVisibility hideForOtherTeams
execute if predicate mad:gamerules/team_match/death_message_visibility/false run team modify TeamC deathMessageVisibility never