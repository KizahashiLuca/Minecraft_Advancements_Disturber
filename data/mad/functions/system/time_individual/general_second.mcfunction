#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Detect leaving in midgame
scoreboard players operation @a[team=Participant,scores={Phase=21,Death=0}] GeneralSecond -= #mad Second
execute as @a[team=Participant,scores={Phase=21,Death=0}] if score @s GeneralSecond matches ..-1 run scoreboard players operation @s Second += @s GeneralSecond

## Calculate time every second
scoreboard players add #mad Second 1

## Detect leaving in midgame
scoreboard players operation @a[team=Participant,scores={Phase=21,Death=0}] GeneralSecond = #mad Second

## Summon minecart
execute if score #mad Second = #mad SecondSummon run function mad:system/ongame_individual/minecart/summon_minecart