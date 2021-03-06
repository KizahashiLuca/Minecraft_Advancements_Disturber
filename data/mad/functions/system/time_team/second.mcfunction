#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Calculate time
scoreboard players remove @s Second 1
scoreboard players set @s[scores={Second=..-1}] Second 0

## Store time for bossbar
execute as @s[team=TeamA] run function mad:system/time_team/bossbar/team_a
execute as @s[team=TeamB] run function mad:system/time_team/bossbar/team_b
execute as @s[team=TeamC] run function mad:system/time_team/bossbar/team_c
execute as @s[team=TeamD] run function mad:system/time_team/bossbar/team_d
execute as @s[team=TeamE] run function mad:system/time_team/bossbar/team_e