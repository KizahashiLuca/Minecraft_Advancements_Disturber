#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect leaving in midgame
execute unless entity @p[predicate=mad:ongame/player/team_a_alive] run scoreboard players operation @p[team=TeamA,tag=Leader] GeneralSecond -= #mad Second
execute unless entity @p[predicate=mad:ongame/player/team_b_alive] run scoreboard players operation @p[team=TeamB,tag=Leader] GeneralSecond -= #mad Second
execute unless entity @p[predicate=mad:ongame/player/team_c_alive] run scoreboard players operation @p[team=TeamC,tag=Leader] GeneralSecond -= #mad Second
execute unless entity @p[predicate=mad:ongame/player/team_d_alive] run scoreboard players operation @p[team=TeamD,tag=Leader] GeneralSecond -= #mad Second
execute unless entity @p[predicate=mad:ongame/player/team_e_alive] run scoreboard players operation @p[team=TeamE,tag=Leader] GeneralSecond -= #mad Second
execute as @a[tag=Leader] if score @s GeneralSecond matches ..-1 run scoreboard players operation @s Second += @s GeneralSecond

## Calculate time every second
scoreboard players add #mad Second 1

## Detect leaving in midgame
scoreboard players operation @a[tag=Leader] GeneralSecond = #mad Second

## Summon minecart
execute if score #mad Second = #mad SecondSummon run function mad:system/ongame/minecart/summon_minecart