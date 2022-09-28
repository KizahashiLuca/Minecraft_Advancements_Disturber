#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Transmitter
execute as @a[predicate=mad:system/item/transmitter/use] at @s run function mad:system/item/transmitter/main

## Armor upgrader
execute as @a[predicate=mad:system/item/upgrader/armor/use] at @s run function mad:system/item/upgrader/armor/main

## Tool upgrader
execute as @a[predicate=mad:system/item/upgrader/tool/use] at @s run function mad:system/item/upgrader/tool/main

## Notice of thief
execute as @a[predicate=mad:system/item/notice_of_thief/use] at @s run function mad:system/item/notice_of_thief/main
execute as @a[predicate=mad:system/item/notice_of_thief/thief] at @s run function mad:system/item/notice_of_thief/time/tick

## Emergency call
execute as @a[predicate=mad:system/item/emergency_call/use] at @s run function mad:system/item/emergency_call/main

## Evoker fangs wand
execute as @a[predicate=mad:system/item/evoker_fangs_wand/use] at @s run function mad:system/item/evoker_fangs_wand/main

## Return portal
execute as @e[predicate=mad:system/item/return_portal/armor_stand] at @s run function mad:system/item/return_portal/main

## Make maker
execute as @a[predicate=mad:system/item/maze_maker/use] at @s run function mad:system/item/maze_maker/main
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] at @s run function mad:system/item/maze_maker/make_maze