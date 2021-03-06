#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Replace item 
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0] merge from entity @s Inventory[{Slot:-106b}]

## Replace item
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_axe"}]}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:stone_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_axe"}]}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:golden_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_axe"}]}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:iron_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_axe"}]}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:diamond_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_axe"}]}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:netherite_axe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:netherite_axe"}]}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:netherite_axe

## Merge data
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0].tag set from entity @s Inventory[{Slot:-106b}].tag

## Upgrader
replaceitem entity @s weapon.offhand minecraft:air

## Message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green"}]
