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
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/not_wear] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_leather] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_chainmail] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/helmet/wear_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_helmet",Count:1b},Tags:["MAD_DetectHelmetUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/armor/helmet,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{Slot:103b}].tag

## Remove armor
item replace entity @s armor.feet with minecraft:air