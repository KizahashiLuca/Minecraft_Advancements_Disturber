#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item 
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_other] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/not_wear] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_leather] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_chainmail] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/armor/helmet,sort=nearest,limit=1] Item set from entity @s[predicate=mad:system/item/upgrader/armor/helmet/wear_other] Inventory[{Slot:103b}]
data modify entity @e[predicate=mad:system/item/upgrader/armor/helmet,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{Slot:103b}].tag

## Remove armor
item replace entity @s armor.head with minecraft:air