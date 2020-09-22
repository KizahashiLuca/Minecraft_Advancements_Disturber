#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time
scoreboard players remove @s Second 1
scoreboard players set @s[scores={Second=..-1}] Second 0

## Execute time for beacon
execute as @s[scores={Second=0}] at @s run function mad:system/ongame_team/respawn_beacon/time/execute_beacon