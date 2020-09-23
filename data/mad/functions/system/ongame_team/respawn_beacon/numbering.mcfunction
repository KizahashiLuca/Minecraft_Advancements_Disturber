#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Number the players
scoreboard players operation @r[tag=RespawnTeam,scores={Phase=22,Death=1..3},tag=!Numbered] NumOfRespawn = #mad NumOfRespawn
execute as @a[tag=RespawnTeam,scores={Phase=22,Death=1..3},tag=!Numbered] if score @s NumOfRespawn = #mad NumOfRespawn run tag @s add Numbered

## Loop
scoreboard players add #mad NumOfRespawn 1
execute if score #mad NumOfRespawn <= @p[tag=RespawnTeam,tag=Leader] NumDead run function mad:system/ongame_team/respawn_beacon/numbering