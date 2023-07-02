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
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_other] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/not_wear] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_leather] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_chestplate",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_chestplate",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_chainmail] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chestplate",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_chestplate",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_chestplate",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_chestplate",Count:1b},Tags:["MAD_DetectChestplateUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/armor/chestplate,sort=nearest,limit=1] Item set from entity @s[predicate=mad:system/item/upgrader/armor/chestplate/wear_other] Inventory[{Slot:102b}]
data modify entity @e[predicate=mad:system/item/upgrader/armor/chestplate,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{Slot:102b}].tag

## Remove armor
item replace entity @s armor.chest with minecraft:air