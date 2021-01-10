#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Add a tag
tag @r[team=TeamC] add Leader

## Set dead team flag
scoreboard players set #mad DeadTeamC 0

## Set bossbar - team yellow
bossbar add minecraft:bossbar_yellow ["",{"text":"黄チーム ","color":"yellow","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_yellow players @a[team=TeamC]
bossbar set minecraft:bossbar_yellow name ["",{"text":"黄チーム ","color":"yellow","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_yellow max run scoreboard players get @p[team=TeamC,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_yellow value run scoreboard players get @p[team=TeamC,tag=Leader] Second

## Set gamerule - friendlyFire
execute if score #mad friendlyFire matches 1 run team modify TeamC friendlyFire true
execute if score #mad friendlyFire matches 0 run team modify TeamC friendlyFire false
## Set gamerule - collisionRule
execute if score #mad collisionRule matches 1 run team modify TeamC collisionRule always
execute if score #mad collisionRule matches 0 run team modify TeamC collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if score #mad VisibleName matches 1 run team modify TeamC nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 0 run team modify TeamC nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if score #mad VisibleInvis matches 1 run team modify TeamC seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 0 run team modify TeamC seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if score #mad VisibleDeath matches 1 run team modify TeamC deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 0 run team modify TeamC deathMessageVisibility never