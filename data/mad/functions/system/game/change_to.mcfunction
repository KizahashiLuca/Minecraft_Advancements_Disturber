#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set games
function mad:system/game/set_game/main

## Set spawnpoint
execute as @a[predicate=mad:player/participant] at @s run spawnpoint @s ~ ~ ~

## Decide where to summon minecart
execute if predicate mad:gamerules/number_of_minecarts/ge_1 run function mad:system/game/minecart/where_summon_minecart

## Set scoreboard
scoreboard players operation @e[predicate=mad:marker/minecart/not_say_next_minecart] SecondSummon += #mad Second

## Say next position
#execute as @e[predicate=mad:marker/minecart/not_say_next_minecart] run function mad:system/game/minecart/say_next_minecart
tag @e[predicate=mad:marker/minecart/not_say_next_minecart] remove MAD_NotSayNextMinecart

## Set scoreboards for add-on
execute if predicate mad:phase/fall run scoreboard players set #mad LoadAddon 2

## Change phase
scoreboard players set #mad Phase 21