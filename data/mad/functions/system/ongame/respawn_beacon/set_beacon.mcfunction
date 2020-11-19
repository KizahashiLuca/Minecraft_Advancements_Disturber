#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Summon armor stand
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["NotSetPlayer"],CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b}
replaceitem entity @e[type=minecraft:armor_stand,tag=NotSetPlayer,sort=nearest,limit=1] armor.head minecraft:observer{display:{Name:'[""]'}}

## Set nbt
data modify entity @e[type=minecraft:armor_stand,tag=NotSetPlayer,sort=nearest,limit=1] CustomName set from entity @s Item.tag.display.Name
data modify entity @e[type=minecraft:armor_stand,tag=NotSetPlayer,sort=nearest,limit=1] ArmorItems[3].tag.display.Name set from entity @s Item.tag.display.Name

## Kill respawn coin of player's death loot table
kill @s