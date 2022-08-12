#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## give time randomly
tag @p[predicate=mad:player/alive,sort=nearest,limit=1] add MAD_GiveTimeRandomly 
execute if predicate mad:gamerules/match_mode/team run function mad:system/game/minecart/give_time/team
execute if predicate mad:gamerules/match_mode/individual run function mad:system/game/minecart/give_time/individual
tag @a remove MAD_GiveTimeRandomly

## explode minecart
playsound minecraft:entity.firework_rocket.twinkle ambient @a
particle minecraft:explosion ~ ~ ~ 1 1 1 0.5 10 force @a
kill @s

## Set scoreboard
scoreboard players operation @e[predicate=mad:marker/minecart/not_say_next_minecart] SecondSummon += #mad Second

## Say next position / decide next time
execute as @e[predicate=mad:marker/minecart/not_say_next_minecart] run function mad:system/game/minecart/say_next_minecart