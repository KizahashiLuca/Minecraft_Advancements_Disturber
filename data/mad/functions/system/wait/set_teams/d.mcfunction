#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @p[predicate=mad:player/team/d,sort=random] add MAD_Leader

## Set dead team flag
scoreboard players set #mad_team_d DeadOwnTeam 0

## Set bossbar - team red
bossbar add minecraft:bossbar_team_d ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#mad_team_d","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set minecraft:bossbar_team_d color white
bossbar set minecraft:bossbar_team_d style notched_10
bossbar set minecraft:bossbar_team_d visible true
execute store result bossbar minecraft:bossbar_team_d max run scoreboard players get #mad_team_d TimeLimit
execute store result bossbar minecraft:bossbar_team_d value run scoreboard players get #mad_team_d Second

## Set gamerule - friendlyFire
execute if predicate mad:gamerules/team_match/friendly_fire/true run team modify TeamD friendlyFire true
execute if predicate mad:gamerules/team_match/friendly_fire/false run team modify TeamD friendlyFire false
## Set gamerule - collisionRule
execute if predicate mad:gamerules/team_match/collision_rule/true run team modify TeamD collisionRule always
execute if predicate mad:gamerules/team_match/collision_rule/false run team modify TeamD collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if predicate mad:gamerules/team_match/nametag_visibility/true run team modify TeamD nametagVisibility hideForOtherTeams
execute if predicate mad:gamerules/team_match/nametag_visibility/false run team modify TeamD nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if predicate mad:gamerules/team_match/see_friendly_invisibles/true run team modify TeamD seeFriendlyInvisibles true
execute if predicate mad:gamerules/team_match/see_friendly_invisibles/false run team modify TeamD seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if predicate mad:gamerules/team_match/death_message_visibility/true run team modify TeamD deathMessageVisibility hideForOtherTeams
execute if predicate mad:gamerules/team_match/death_message_visibility/false run team modify TeamD deathMessageVisibility never