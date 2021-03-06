#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Calculate time every tick
execute if score #mad Tick matches 0 run scoreboard players set @a[team=Paticipant,predicate=mad:ongame/player/participant_alive] Tick 20
scoreboard players remove @a[predicate=mad:ongame/player/participant_alive] Tick 1

## Calculate time every second
execute if score #mad Tick matches 0 as @a[predicate=mad:ongame/player/participant_alive] run function mad:system/time_individual/second