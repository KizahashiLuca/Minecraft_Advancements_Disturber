#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Calculate time every tick
execute if score #mad Tick matches 0 run scoreboard players set @a[team=Paticipant,scores={Phase=21,Death=0}] Tick 20
scoreboard players remove @a[team=Participant,scores={Phase=21,Death=0}] Tick 1

## Calculate time every second
execute if score #mad Tick matches 0 as @a[team=Participant,scores={Phase=21,Death=0}] run function mad:system/time_individual/second