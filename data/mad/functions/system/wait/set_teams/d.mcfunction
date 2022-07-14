#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @p[predicate=mad:player/team/d,sort=random] add MAD_Leader

## Set dead team flag
scoreboard players set #mad_team_d DeadOwnTeam 0

## Set bossbar - team red
bossbar add mad:bossbar/team/d ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#mad_team_d","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set mad:bossbar/team/d color white
bossbar set mad:bossbar/team/d style notched_10
bossbar set mad:bossbar/team/d visible true
execute store result bossbar mad:bossbar/team/d max run scoreboard players get #mad_team_d TimeLimit
execute store result bossbar mad:bossbar/team/d value run scoreboard players get #mad_team_d Second

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