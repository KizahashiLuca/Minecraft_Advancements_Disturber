#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Detect version 1.15 advancements
execute as @s[scores={AD_ad_honey_slid=0},advancements={minecraft:adventure/honey_block_slide=true}] run function mad:system/ongame/advancements/adventure/honey_block_slide
execute as @s[scores={AD_hb_harv_honey=0},advancements={minecraft:husbandry/safely_harvest_honey=true}] run function mad:system/ongame/advancements/husbandry/safely_harvest_honey
execute as @s[scores={AD_hb_silk_nest=0},advancements={minecraft:husbandry/silk_touch_nest=true}] run function mad:system/ongame/advancements/husbandry/silk_touch_nest