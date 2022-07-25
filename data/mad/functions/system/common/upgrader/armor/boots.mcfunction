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
execute as @s[predicate=mad:system/common/upgrader/armor/boots/not_wear] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/armor/boots/wear_leather] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/armor/boots/wear_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/armor/boots/wear_chainmail] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/armor/boots/wear_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/armor/boots/wear_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/armor/boots/wear_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_boots",Count:1b},Tags:["MAD_DetectBootsUpgrader"]}

## Merge nbt tag
data modify entity @e[predicate=mad:system/common/upgrader/armor/boots,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{Slot:100b}].tag

## Remove armor
item replace entity @s armor.feet with minecraft:air