#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add a tag
tag @p[team=TeamA,sort=random] add Leader

## Set dead team flag
scoreboard players set #mad DeadTeamA 0

## Set bossbar - team red
bossbar add minecraft:bossbar_red ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_red players @a[team=TeamA]
bossbar set minecraft:bossbar_red name ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_red max run scoreboard players get @p[team=TeamA,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_red value run scoreboard players get @p[team=TeamA,tag=Leader] Second

## Set gamerule - friendlyFire
execute if score #mad friendlyFire matches 1 run team modify TeamA friendlyFire true
execute if score #mad friendlyFire matches 0 run team modify TeamA friendlyFire false
## Set gamerule - collisionRule
execute if score #mad collisionRule matches 1 run team modify TeamA collisionRule always
execute if score #mad collisionRule matches 0 run team modify TeamA collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if score #mad VisibleName matches 1 run team modify TeamA nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 0 run team modify TeamA nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if score #mad VisibleInvis matches 1 run team modify TeamA seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 0 run team modify TeamA seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if score #mad VisibleDeath matches 1 run team modify TeamA deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 0 run team modify TeamA deathMessageVisibility never