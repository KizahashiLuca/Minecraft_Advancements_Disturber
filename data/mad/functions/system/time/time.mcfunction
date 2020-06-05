#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 31 May 2020
## Version   : α-0.1
#####################################

## Calculate time every tick
scoreboard players remove @s Tick 1
scoreboard players set @s[scores={Tick=..-1}] Tick 19

## Calculate time every second
execute as @s[scores={Tick=0}] run function mad:system/time/second