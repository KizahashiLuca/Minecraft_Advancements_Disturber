#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players set @s UseToolUpgrader 0

## Detect none
execute as @s[predicate=mad:system/item/upgrader/tool/none] run function mad:system/item/upgrader/tool/none

## Detect axe
execute as @s[predicate=mad:system/item/upgrader/tool/axe/main] run function mad:system/item/upgrader/tool/axe

## Detect axe
execute as @s[predicate=mad:system/item/upgrader/tool/hoe/main] run function mad:system/item/upgrader/tool/hoe

## Detect axe
execute as @s[predicate=mad:system/item/upgrader/tool/pickaxe/main] run function mad:system/item/upgrader/tool/pickaxe

## Detect axe
execute as @s[predicate=mad:system/item/upgrader/tool/shovel/main] run function mad:system/item/upgrader/tool/shovel

## Detect axe
execute as @s[predicate=mad:system/item/upgrader/tool/sword/main] run function mad:system/item/upgrader/tool/sword

## Kill turtle
kill @e[predicate=mad:system/item/upgrader/tool/monster_egg,sort=nearest,limit=1]