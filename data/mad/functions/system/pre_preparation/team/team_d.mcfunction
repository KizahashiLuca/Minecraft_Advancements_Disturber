#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add a tag
tag @r[team=TeamD] add Leader

## Set dead team flag
scoreboard players set #mad DeadTeamD 0

## Set bossbar - team green
bossbar add minecraft:bossbar_green ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_green players @a[team=TeamD]
bossbar set minecraft:bossbar_green name ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_green max run scoreboard players get @p[team=TeamD,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_green value run scoreboard players get @p[team=TeamD,tag=Leader] Second

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