#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time every tick
execute if score #mad Tick matches 0 run scoreboard players set @a[team=Paticipant,scores={Phase=21,Death=0}] Tick 20
scoreboard players remove @a[team=Participant,scores={Phase=21,Death=0}] Tick 1

## Calculate time every second
execute if score #mad Tick matches 0 as @a[team=Participant,scores={Phase=21,Death=0}] run function mad:system/time_indivisual/second