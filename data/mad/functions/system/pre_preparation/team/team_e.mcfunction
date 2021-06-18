#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Add a tag
tag @p[team=TeamE,sort=random] add Leader

## Set dead team flag
scoreboard players set #mad DeadTeamE 0

## Set bossbar - team purple
bossbar add minecraft:bossbar_purple ["",{"text":"紫チーム ","color":"dark_purple","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_purple players @a[team=TeamE]
bossbar set minecraft:bossbar_purple name ["",{"text":"紫チーム ","color":"dark_purple","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_purple max run scoreboard players get @p[team=TeamE,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_purple value run scoreboard players get @p[team=TeamE,tag=Leader] Second

## Set gamerule - friendlyFire
execute if score #mad friendlyFire matches 1 run team modify TeamE friendlyFire true
execute if score #mad friendlyFire matches 0 run team modify TeamE friendlyFire false
## Set gamerule - collisionRule
execute if score #mad collisionRule matches 1 run team modify TeamE collisionRule always
execute if score #mad collisionRule matches 0 run team modify TeamE collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if score #mad VisibleName matches 1 run team modify TeamE nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 0 run team modify TeamE nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if score #mad VisibleInvis matches 1 run team modify TeamE seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 0 run team modify TeamE seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if score #mad VisibleDeath matches 1 run team modify TeamE deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 0 run team modify TeamE deathMessageVisibility never