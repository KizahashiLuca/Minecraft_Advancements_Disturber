#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect version 1.16 advancements
execute as @s[scores={AD_ad_bullseye=0},advancements={minecraft:adventure/bullseye=true}] run function mad:system/ongame/advancements/adventure/bullseye
execute as @s[scores={AD_hb_nether_hoe=0},advancements={minecraft:husbandry/obtain_netherite_hoe=true}] run function mad:system/ongame/advancements/husbandry/obtain_netherite_hoe

## Detect version 1.16 advancements - nether
execute as @s[scores={AD_nt_respawn=0},advancements={minecraft:nether/charge_respawn_anchor=true}] run function mad:system/ongame/advancements/nether/charge_respawn_anchor
execute as @s[scores={AD_nt_distract=0},advancements={minecraft:nether/distract_piglin=true}] run function mad:system/ongame/advancements/nether/distract_piglin
execute as @s[scores={AD_nt_explore=0},advancements={minecraft:nether/explore_nether=true}] run function mad:system/ongame/advancements/nether/explore_nether
execute as @s[scores={AD_nt_bastion=0},advancements={minecraft:nether/find_bastion=true}] run function mad:system/ongame/advancements/nether/find_bastion
execute as @s[scores={AD_nt_loot_bastn=0},advancements={minecraft:nether/loot_bastion=true}] run function mad:system/ongame/advancements/nether/loot_bastion
execute as @s[scores={AD_nt_ntrt_armor=0},advancements={minecraft:nether/netherite_armor=true}] run function mad:system/ongame/advancements/nether/netherite_armor
execute as @s[scores={AD_nt_ancient_db=0},advancements={minecraft:nether/obtain_ancient_debris=true}] run function mad:system/ongame/advancements/nether/obtain_ancient_debris
execute as @s[scores={AD_nt_cry_obsidn=0},advancements={minecraft:nether/obtain_crying_obsidian=true}] run function mad:system/ongame/advancements/nether/obtain_crying_obsidian
execute as @s[scores={AD_nt_strider=0},advancements={minecraft:nether/ride_strider=true}] run function mad:system/ongame/advancements/nether/ride_strider
execute as @s[scores={AD_nt_lodestone=0},advancements={minecraft:nether/use_lodestone=true}] run function mad:system/ongame/advancements/nether/use_lodestone