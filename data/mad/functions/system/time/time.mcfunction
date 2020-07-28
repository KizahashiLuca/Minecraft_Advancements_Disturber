#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time every tick
scoreboard players remove @a[team=Participant,scores={Phase=21,Death=0}] Tick 1
scoreboard players set @a[team=Participant,scores={Phase=21,Death=0,Tick=..-1}] Tick 19

## Calculate time every second
execute as @a[team=Participant,scores={Phase=21,Death=0,Tick=0}] run function mad:system/time/second