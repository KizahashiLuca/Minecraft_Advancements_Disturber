#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Calculate time
scoreboard players remove #mad Second 1

## Send title message
execute if score #mad Second matches 30 run title @a title ["",{"score":{"name":"#mad","objective":"Second"}},{"text":"秒前"}]
execute if score #mad Second matches 0..15 run title @a title ["",{"score":{"name":"#mad","objective":"Second"}}]
execute if score #mad Second matches 0..15 run title @a times 3 14 3

## Process the sound system
execute if score #mad Second matches 1..3 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mad Second matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1