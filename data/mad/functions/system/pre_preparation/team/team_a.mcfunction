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
tag @p[team=TeamA,sort=random] add Leader

## Set dead team flag
scoreboard players set #mad DeadTeamA 0

## Set bossbar - team red
bossbar add mad:bossbar/team/a ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set mad:bossbar/team/a players @a[team=TeamA]
bossbar set mad:bossbar/team/a name ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar mad:bossbar/team/a max run scoreboard players get @p[team=TeamA,tag=Leader] TimeLimit
execute store result bossbar mad:bossbar/team/a value run scoreboard players get @p[team=TeamA,tag=Leader] Second

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