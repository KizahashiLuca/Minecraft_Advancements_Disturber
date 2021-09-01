#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect leaving in midgame
scoreboard players operation @a[predicate=mad:ongame/player/participant_alive] GeneralSecond -= #mad Second
execute as @a[predicate=mad:ongame/player/participant_alive] if score @s GeneralSecond matches ..-1 run scoreboard players operation @s Second += @s GeneralSecond

## Calculate time every second
scoreboard players add #mad Second 1

## Detect leaving in midgame
scoreboard players operation @a[predicate=mad:ongame/player/participant_alive] GeneralSecond = #mad Second

## Summon minecart
execute if score #mad Second = #mad SecondSummon run function mad:system/ongame/minecart/summon_minecart