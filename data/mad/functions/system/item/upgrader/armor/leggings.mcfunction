#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item 
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_other] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/not_wear] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_leather] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_chainmail] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/armor/leggings,sort=nearest,limit=1] Item set from entity @s[predicate=mad:system/item/upgrader/armor/leggings/wear_other] Inventory[{Slot:101b}]
data modify entity @e[predicate=mad:system/item/upgrader/armor/leggings,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{Slot:101b}].tag

## Remove armor
item replace entity @s armor.legs with minecraft:air