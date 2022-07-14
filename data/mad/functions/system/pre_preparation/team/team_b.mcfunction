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
tag @p[team=TeamB,sort=random] add Leader

## Set dead team flag
scoreboard players set #mad DeadTeamB 0

## Set bossbar - team blue
bossbar add mad:bossbar/team/b ["",{"text":"青チーム ","color":"blue","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set mad:bossbar/team/b players @a[team=TeamB]
bossbar set mad:bossbar/team/b name ["",{"text":"青チーム ","color":"blue","bold":true},{"text":"生存時間  残り "},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar mad:bossbar/team/b max run scoreboard players get @p[team=TeamB,tag=Leader] TimeLimit
execute store result bossbar mad:bossbar/team/b value run scoreboard players get @p[team=TeamB,tag=Leader] Second

## Set gamerule - friendlyFire
execute if score #mad friendlyFire matches 1 run team modify TeamB friendlyFire true
execute if score #mad friendlyFire matches 0 run team modify TeamB friendlyFire false
## Set gamerule - collisionRule
execute if score #mad collisionRule matches 1 run team modify TeamB collisionRule always
execute if score #mad collisionRule matches 0 run team modify TeamB collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if score #mad VisibleName matches 1 run team modify TeamB nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 0 run team modify TeamB nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if score #mad VisibleInvis matches 1 run team modify TeamB seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 0 run team modify TeamB seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if score #mad VisibleDeath matches 1 run team modify TeamB deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 0 run team modify TeamB deathMessageVisibility never