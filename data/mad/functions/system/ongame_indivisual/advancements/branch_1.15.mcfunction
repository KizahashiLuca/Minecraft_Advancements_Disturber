#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect version 1.15 advancements
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_ad_honey_slid=0},advancements={minecraft:adventure/honey_block_slide=true}] run function mad:system/ongame_indivisual/advancements/adventure/honey_block_slide
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_hb_harv_honey=0},advancements={minecraft:husbandry/safely_harvest_honey=true}] run function mad:system/ongame_indivisual/advancements/husbandry/safely_harvest_honey
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_hb_silk_nest=0},advancements={minecraft:husbandry/silk_touch_nest=true}] run function mad:system/ongame_indivisual/advancements/husbandry/silk_touch_nest