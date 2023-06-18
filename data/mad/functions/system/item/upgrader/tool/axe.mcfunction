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
execute as @s[predicate=mad:system/item/upgrader/tool/axe/have_wooden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_axe",Count:1b},Tags:["MAD_DetectAxeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/axe/have_stone] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_axe",Count:1b},Tags:["MAD_DetectAxeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/axe/have_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_axe",Count:1b},Tags:["MAD_DetectAxeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/axe/have_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_axe",Count:1b},Tags:["MAD_DetectAxeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/axe/have_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_axe",Count:1b},Tags:["MAD_DetectAxeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/axe/have_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_axe",Count:1b},Tags:["MAD_DetectAxeUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/tool/axe,sort=nearest,limit=1] Item.tag set from entity @s[predicate=mad:system/item/upgrader/tool/mainhand] SelectedItem.tag
data modify entity @e[predicate=mad:system/item/upgrader/tool/axe,sort=nearest,limit=1] Item.tag set from entity @s[predicate=mad:system/item/upgrader/tool/offhand] Inventory[{Slot:-106b}].tag

## Remove armor
item replace entity @s[predicate=mad:system/item/upgrader/tool/mainhand] weapon.mainhand with minecraft:air
item replace entity @s[predicate=mad:system/item/upgrader/tool/offhand] weapon.offhand with minecraft:air

## Play sound
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## Send message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green","bold":false,"italic":false}]