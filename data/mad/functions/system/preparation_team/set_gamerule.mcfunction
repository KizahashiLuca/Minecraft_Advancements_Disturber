#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set gamerule - friendlyFire
execute if score #mad friendlyFire matches 1 run team modify TeamA friendlyFire true
execute if score #mad friendlyFire matches 1 run team modify TeamB friendlyFire true
execute if score #mad friendlyFire matches 1 run team modify TeamC friendlyFire true
execute if score #mad friendlyFire matches 1 run team modify TeamD friendlyFire true
execute if score #mad friendlyFire matches 1 run team modify TeamE friendlyFire true

execute if score #mad friendlyFire matches 0 run team modify TeamA friendlyFire false
execute if score #mad friendlyFire matches 0 run team modify TeamB friendlyFire false
execute if score #mad friendlyFire matches 0 run team modify TeamC friendlyFire false
execute if score #mad friendlyFire matches 0 run team modify TeamD friendlyFire false
execute if score #mad friendlyFire matches 0 run team modify TeamE friendlyFire false

## Set gamerule - collisionRule
execute if score #mad collisionRule matches 1 run team modify TeamA collisionRule always
execute if score #mad collisionRule matches 1 run team modify TeamB collisionRule always
execute if score #mad collisionRule matches 1 run team modify TeamC collisionRule always
execute if score #mad collisionRule matches 1 run team modify TeamD collisionRule always
execute if score #mad collisionRule matches 1 run team modify TeamE collisionRule always

execute if score #mad collisionRule matches 0 run team modify TeamA collisionRule pushOtherTeams
execute if score #mad collisionRule matches 0 run team modify TeamB collisionRule pushOtherTeams
execute if score #mad collisionRule matches 0 run team modify TeamC collisionRule pushOtherTeams
execute if score #mad collisionRule matches 0 run team modify TeamD collisionRule pushOtherTeams
execute if score #mad collisionRule matches 0 run team modify TeamE collisionRule pushOtherTeams

## Set gamerule - nametagVisibility
execute if score #mad VisibleName matches 1 run team modify TeamA nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 1 run team modify TeamB nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 1 run team modify TeamC nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 1 run team modify TeamD nametagVisibility hideForOtherTeams
execute if score #mad VisibleName matches 1 run team modify TeamE nametagVisibility hideForOtherTeams

execute if score #mad VisibleName matches 0 run team modify TeamA nametagVisibility never
execute if score #mad VisibleName matches 0 run team modify TeamB nametagVisibility never
execute if score #mad VisibleName matches 0 run team modify TeamC nametagVisibility never
execute if score #mad VisibleName matches 0 run team modify TeamD nametagVisibility never
execute if score #mad VisibleName matches 0 run team modify TeamE nametagVisibility never

## Set gamerule - seeFriendlyInvisibles
execute if score #mad VisibleInvis matches 1 run team modify TeamA seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 1 run team modify TeamB seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 1 run team modify TeamC seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 1 run team modify TeamD seeFriendlyInvisibles true
execute if score #mad VisibleInvis matches 1 run team modify TeamE seeFriendlyInvisibles true

execute if score #mad VisibleInvis matches 0 run team modify TeamA seeFriendlyInvisibles false
execute if score #mad VisibleInvis matches 0 run team modify TeamB seeFriendlyInvisibles false
execute if score #mad VisibleInvis matches 0 run team modify TeamC seeFriendlyInvisibles false
execute if score #mad VisibleInvis matches 0 run team modify TeamD seeFriendlyInvisibles false
execute if score #mad VisibleInvis matches 0 run team modify TeamE seeFriendlyInvisibles false

## Set gamerule - deathMessageVisibility
execute if score #mad VisibleDeath matches 1 run team modify TeamA deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 1 run team modify TeamB deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 1 run team modify TeamC deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 1 run team modify TeamD deathMessageVisibility hideForOtherTeams
execute if score #mad VisibleDeath matches 1 run team modify TeamE deathMessageVisibility hideForOtherTeams

execute if score #mad VisibleDeath matches 0 run team modify TeamA deathMessageVisibility never
execute if score #mad VisibleDeath matches 0 run team modify TeamB deathMessageVisibility never
execute if score #mad VisibleDeath matches 0 run team modify TeamC deathMessageVisibility never
execute if score #mad VisibleDeath matches 0 run team modify TeamD deathMessageVisibility never
execute if score #mad VisibleDeath matches 0 run team modify TeamE deathMessageVisibility never