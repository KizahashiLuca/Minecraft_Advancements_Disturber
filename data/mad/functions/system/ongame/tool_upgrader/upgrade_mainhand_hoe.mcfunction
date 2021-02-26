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
execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:stone_hoe
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:golden_hoe
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:iron_hoe
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:diamond_hoe
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:netherite_hoe
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] run replaceitem entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] weapon.mainhand minecraft:netherite_hoe

## Merge data
data modify entity @e[predicate=mad:ongame/tool_upgrader,sort=nearest,limit=1] HandItems[0].tag set from entity @s SelectedItem.tag

## Upgrader
replaceitem entity @s weapon.mainhand minecraft:air

## Message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green"}]
