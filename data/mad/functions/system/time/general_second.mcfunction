#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect leaving in midgame
scoreboard players operation @a[team=Participant,scores={Phase=21,Death=0}] GeneralSecond -= #mad Second
execute as @a[team=Participant,scores={Phase=21,Death=0}] if score @s GeneralSecond matches ..-1 run scoreboard players operation @s Second += @s GeneralSecond

## Calculate time every second
scoreboard players add #mad Second 1
scoreboard players operation #mad SecondSummon = #mad Second
scoreboard players operation #mad SecondSummon %= #mad 300
scoreboard players operation #mad SecondEliminate = #mad Second
scoreboard players remove #mad SecondEliminate 200
scoreboard players operation #mad SecondEliminate %= #mad 300

## Detect leaving in midgame
scoreboard players operation @a[team=Participant,scores={Phase=21,Death=0}] GeneralSecond = #mad Second

## Summon minecart
execute if score #mad SecondSummon matches 0 run function mad:system/ongame/minecart/summon_minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart] if score #mad SecondEliminate matches 0 run kill @s
execute unless entity @e[type=minecraft:chest_minecart,tag=Minecart] if score #mad SummonMinecart matches 1 run function mad:system/ongame/minecart/eliminate_minecart