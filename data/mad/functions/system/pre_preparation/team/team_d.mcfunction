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
tag @p[team=TeamD,sort=random] add Leader

## Set dead team flag
scoreboard players set #mad DeadTeamD 0

## Set bossbar - team green
bossbar add mad:bossbar/team/d ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set mad:bossbar/team/d players @a[team=TeamD]
bossbar set mad:bossbar/team/d name ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar mad:bossbar/team/d max run scoreboard players get @p[team=TeamD,tag=Leader] TimeLimit
execute store result bossbar mad:bossbar/team/d value run scoreboard players get @p[team=TeamD,tag=Leader] Second

## Set gamerule - friendlyFire
execute if score #mad friendlyFire matches 1 run team modify TeamD friendlyFire true
execute if score #mad friendlyFire matches 0 run team modify TeamD friendlyFire false
## Set gamerule - collisionRule
execute if score #mad collisionRule matches 1 run team modify TeamD collisionRule always
execute if score #mad collisionRule matches 0 run team modify TeamD collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if score #mad VisibleName matches 1 run team modify TeamD nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 0 run team modify TeamD nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if score #mad VisibleInvis matches 1 run team modify TeamD seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 0 run team modify TeamD seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if score #mad VisibleDeath matches 1 run team modify TeamD deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 0 run team modify TeamD deathMessageVisibility never