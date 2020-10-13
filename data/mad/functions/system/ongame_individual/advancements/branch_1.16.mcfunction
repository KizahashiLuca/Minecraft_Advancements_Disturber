#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect version 1.16 advancements
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_ad_bullseye=0},advancements={minecraft:adventure/bullseye=true}] run function mad:system/ongame_individual/advancements/adventure/bullseye
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_hb_nether_hoe=0},advancements={minecraft:husbandry/obtain_netherite_hoe=true}] run function mad:system/ongame_individual/advancements/husbandry/obtain_netherite_hoe

## Detect version 1.16 advancements - nether
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_respawn=0},advancements={minecraft:nether/charge_respawn_anchor=true}] run function mad:system/ongame_individual/advancements/nether/charge_respawn_anchor
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_distract=0},advancements={minecraft:nether/distract_piglin=true}] run function mad:system/ongame_individual/advancements/nether/distract_piglin
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_explore=0},advancements={minecraft:nether/explore_nether=true}] run function mad:system/ongame_individual/advancements/nether/explore_nether
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_bastion=0},advancements={minecraft:nether/find_bastion=true}] run function mad:system/ongame_individual/advancements/nether/find_bastion
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_loot_bastn=0},advancements={minecraft:nether/loot_bastion=true}] run function mad:system/ongame_individual/advancements/nether/loot_bastion
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_ntrt_armor=0},advancements={minecraft:nether/netherite_armor=true}] run function mad:system/ongame_individual/advancements/nether/netherite_armor
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_ancient_db=0},advancements={minecraft:nether/obtain_ancient_debris=true}] run function mad:system/ongame_individual/advancements/nether/obtain_ancient_debris
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_cry_obsidn=0},advancements={minecraft:nether/obtain_crying_obsidian=true}] run function mad:system/ongame_individual/advancements/nether/obtain_crying_obsidian
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_strider=0},advancements={minecraft:nether/ride_strider=true}] run function mad:system/ongame_individual/advancements/nether/ride_strider
execute as @a[team=Participant,scores={Phase=21,Death=0,AD_nt_lodestone=0},advancements={minecraft:nether/use_lodestone=true}] run function mad:system/ongame_individual/advancements/nether/use_lodestone