#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time every second
scoreboard players add #mad Second 1
scoreboard players operation #mad SecondSummon = #mad Second
scoreboard players operation #mad SecondSummon %= #mad 300
scoreboard players operation #mad SecondEliminate = #mad Second
scoreboard players remove #mad SecondEliminate 200
scoreboard players operation #mad SecondEliminate %= #mad 300

## Summon minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart] if score #mad SecondSummon matches 0 run function mad:system/ongame/minecart/summon_minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart] if score #mad SecondEliminate matches 0 run kill @s
execute unless entity @e[type=minecraft:chest_minecart,tag=Minecart] if score #mad SummonMinecart matches 1 run function mad:system/ongame/minecart/eliminate_minecart