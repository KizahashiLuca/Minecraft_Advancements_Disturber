#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect version 1.14 advancements
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_hb_break_hoe=0},advancements={minecraft:husbandry/break_diamond_hoe=true}] run function mad:system/ongame_indivisual/advancements/husbandry/break_diamond_hoe