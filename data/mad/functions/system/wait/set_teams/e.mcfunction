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
tag @p[predicate=mad:player/team/e,sort=random] add MAD_Leader

## Set dead team flag
scoreboard players set #mad_team_e DeadOwnTeam 0

## Set bossbar - team red
bossbar add mad:bossbar/team/e ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"score":{"name":"#mad_team_e","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set mad:bossbar/team/e color white
bossbar set mad:bossbar/team/e style notched_10
bossbar set mad:bossbar/team/e visible true
execute store result bossbar mad:bossbar/team/e max run scoreboard players get #mad_team_e TimeLimit
execute store result bossbar mad:bossbar/team/e value run scoreboard players get #mad_team_e Second

## Set gamerule - friendlyFire
execute if predicate mad:gamerules/team_match/friendly_fire/true run team modify TeamE friendlyFire true
execute if predicate mad:gamerules/team_match/friendly_fire/false run team modify TeamE friendlyFire false
## Set gamerule - collisionRule
execute if predicate mad:gamerules/team_match/collision_rule/true run team modify TeamE collisionRule always
execute if predicate mad:gamerules/team_match/collision_rule/false run team modify TeamE collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if predicate mad:gamerules/team_match/nametag_visibility/true run team modify TeamE nametagVisibility hideForOtherTeams
execute if predicate mad:gamerules/team_match/nametag_visibility/false run team modify TeamE nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if predicate mad:gamerules/team_match/see_friendly_invisibles/true run team modify TeamE seeFriendlyInvisibles true
execute if predicate mad:gamerules/team_match/see_friendly_invisibles/false run team modify TeamE seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if predicate mad:gamerules/team_match/death_message_visibility/true run team modify TeamE deathMessageVisibility hideForOtherTeams
execute if predicate mad:gamerules/team_match/death_message_visibility/false run team modify TeamE deathMessageVisibility never