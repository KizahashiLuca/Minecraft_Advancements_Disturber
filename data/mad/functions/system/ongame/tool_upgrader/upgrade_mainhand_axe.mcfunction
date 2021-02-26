#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Replace item 
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0] merge from entity @s SelectedItem

## Replace item
execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:stone_axe
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:golden_axe
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:iron_axe
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:diamond_axe
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:netherite_axe
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:netherite_axe

## Merge data
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0].tag set from entity @s SelectedItem.tag

## Upgrader
replaceitem entity @s weapon.mainhand minecraft:air

## Message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green"}]
