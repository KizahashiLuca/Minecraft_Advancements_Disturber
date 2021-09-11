#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item 
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0] merge from entity @s SelectedItem

## Replace item
execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:stone_pickaxe
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:golden_pickaxe
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:iron_pickaxe
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:diamond_pickaxe
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:netherite_pickaxe
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:netherite_pickaxe

## Merge data
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0].tag set from entity @s SelectedItem.tag

## Upgrader
item replace entity @s weapon.mainhand with minecraft:air

## Message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green"}]
