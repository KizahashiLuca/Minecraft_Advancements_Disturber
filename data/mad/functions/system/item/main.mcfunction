#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
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

## Warden fangs wand
execute as @a[predicate=mad:system/item/warden_fangs_wand/use] at @s run function mad:system/item/warden_fangs_wand/main

## Return portal
execute as @e[predicate=mad:system/item/return_portal/armor_stand] at @s run function mad:system/item/return_portal/main

## Maze maker
execute as @a[predicate=mad:system/item/maze_maker/use] at @s run function mad:system/item/maze_maker/main
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] at @s run function mad:system/item/maze_maker/make_maze/main

## Teleport arrow
#execute as @e[predicate=mad:system/item/teleport_arrow/onground_arrow] at @s run function mad:system/item/teleport_arrow/modify_data
execute as @a[predicate=mad:system/item/teleport_arrow/teleportee] at @s run function mad:system/item/teleport_arrow/main