#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
$data modify storage mad: death.victim set value '@p[tag=MAD_Player$(victim_number)]'
data modify storage mad: death.dimension set from entity @s LastDeathLocation.dimension
data modify storage mad: death.x set from entity @s LastDeathLocation.pos[0]
data modify storage mad: death.y set from entity @s LastDeathLocation.pos[1]
data modify storage mad: death.z set from entity @s LastDeathLocation.pos[2]
data modify storage mad: death.message set value ''
execute as @s[predicate=mad:player/team/a] run data modify storage mad: death.victim_team set value 'a'
execute as @s[predicate=mad:player/team/b] run data modify storage mad: death.victim_team set value 'b'
execute as @s[predicate=mad:player/team/c] run data modify storage mad: death.victim_team set value 'c'
execute as @s[predicate=mad:player/team/d] run data modify storage mad: death.victim_team set value 'd'