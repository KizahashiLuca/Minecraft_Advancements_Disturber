#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Replace item 
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0] merge from entity @s SelectedItem

## Replace item
execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:stone_sword
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:golden_sword
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:iron_sword
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:diamond_sword
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:netherite_sword
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run item replace entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand with minecraft:netherite_sword

## Merge data
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0].tag set from entity @s SelectedItem.tag

## Upgrader
item replace entity @s weapon.mainhand with minecraft:air

## Message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green"}]