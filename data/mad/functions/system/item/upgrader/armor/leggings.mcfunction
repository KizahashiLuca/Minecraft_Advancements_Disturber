#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item 
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/not_wear] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_leather] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_chainmail] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/leggings/wear_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_leggings",Count:1b},Tags:["MAD_DetectLeggingsUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/armor/leggings,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{Slot:101b}].tag

## Remove armor
item replace entity @s armor.legs with minecraft:air