#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *

## Set gamemode
gamemode survival @a[team=Participant]
execute if score #mad Difficulty matches 1 run difficulty easy
execute if score #mad Difficulty matches 2 run difficulty normal
execute if score #mad Difficulty matches 3 run difficulty hard

## Clear inventory
clear @a[team=Participant]
effect clear @a[team=Participant]

## Give items
give @a[team=Participant] minecraft:stone_sword
give @a[team=Participant] minecraft:stone_axe
give @a[team=Participant] minecraft:stone_shovel

## Set scoreboards
scoreboard players set @a[team=Participant] Phase 21

## Change phase
scoreboard players set #mad Phase 21