#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item 
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0] merge from entity @s Inventory[{Slot:-106b}]

## Replace item
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_axe"}]}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:stone_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_axe"}]}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:golden_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_axe"}]}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:iron_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_axe"}]}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:diamond_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_axe"}]}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:netherite_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:netherite_axe"}]}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:netherite_axe

## Merge data
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0].tag set from entity @s Inventory[{Slot:-106b}].tag

## Upgrader
item replace entity @s weapon.offhand with minecraft:air

## Message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green"}]
