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
execute as @s[predicate=mad:system/item/upgrader/armor/boots/wear_other] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/boots/not_wear] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/boots/wear_leather] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/boots/wear_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/boots/wear_chainmail] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/boots/wear_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/boots/wear_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/boots/wear_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/armor/boots,sort=nearest,limit=1] Item set from entity @s[predicate=mad:system/item/upgrader/armor/boots/wear_other] Inventory[{Slot:100b}]
data modify entity @e[predicate=mad:system/item/upgrader/armor/boots,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{Slot:100b}].tag

## Remove armor
item replace entity @s armor.feet with minecraft:air