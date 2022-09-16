#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear effect
effect clear @s minecraft:slow_falling
#effect clear @s minecraft:resistance
#effect clear @s minecraft:invisibility
#effect clear @s minecraft:weakness

## Teleport
summon minecraft:marker ~ ~ ~ {Tags:["MAD_Teleporter","MAD_SummonedTeleporter"],NoGravity:1b,Invulnerable:1b}
scoreboard players operation @e[predicate=mad:system/fall/teleport/summoned_teleporter] ParticipantNumber = @s ParticipantNumber

## Remove a tag
tag @e[predicate=mad:system/fall/teleport/summoned_teleporter] remove MAD_SummonedTeleporter