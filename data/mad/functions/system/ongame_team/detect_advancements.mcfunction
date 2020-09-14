#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect advancements - adventure
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_adven_time=0},advancements={minecraft:adventure/adventuring_time=true}] run function mad:system/ongame_team/advancements/adventure/adventuring_time
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_arbalistic=0},advancements={minecraft:adventure/arbalistic=true}] run function mad:system/ongame_team/advancements/adventure/arbalistic
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_hero_villa=0},advancements={minecraft:adventure/hero_of_the_village=true}] run function mad:system/ongame_team/advancements/adventure/hero_of_the_village
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_kill_a_mob=0},advancements={minecraft:adventure/kill_a_mob=true}] run function mad:system/ongame_team/advancements/adventure/kill_a_mob
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_kill_all=0},advancements={minecraft:adventure/kill_all_mobs=true}] run function mad:system/ongame_team/advancements/adventure/kill_all_mobs
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_ol_betsy=0},advancements={minecraft:adventure/ol_besty=true}] run function mad:system/ongame_team/advancements/adventure/ol_besty
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_root=0},advancements={minecraft:adventure/root=true}] run function mad:system/ongame_team/advancements/adventure/root
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_shot_arrow=0},advancements={minecraft:adventure/shoot_arrow=true}] run function mad:system/ongame_team/advancements/adventure/shoot_arrow
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_sleep=0},advancements={minecraft:adventure/sleep_in_bed=true}] run function mad:system/ongame_team/advancements/adventure/sleep_in_bed
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_sniper=0},advancements={minecraft:adventure/sniper_duel=true}] run function mad:system/ongame_team/advancements/adventure/sniper_duel
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_iron_golem=0},advancements={minecraft:adventure/summon_iron_golem=true}] run function mad:system/ongame_team/advancements/adventure/summon_iron_golem
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_trident=0},advancements={minecraft:adventure/throw_trident=true}] run function mad:system/ongame_team/advancements/adventure/throw_trident
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_totem=0},advancements={minecraft:adventure/totem_of_undying=true}] run function mad:system/ongame_team/advancements/adventure/totem_of_undying
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_trade=0},advancements={minecraft:adventure/trade=true}] run function mad:system/ongame_team/advancements/adventure/trade
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_two_birds=0},advancements={minecraft:adventure/two_birds_one_arrow=true}] run function mad:system/ongame_team/advancements/adventure/two_birds_one_arrow
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_very_very=0},advancements={minecraft:adventure/very_very_frightening=true}] run function mad:system/ongame_team/advancements/adventure/very_very_frightening
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_voluntary=0},advancements={minecraft:adventure/voluntary_exile=true}] run function mad:system/ongame_team/advancements/adventure/voluntary_exile
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ad_whos_pilla=0},advancements={minecraft:adventure/whos_the_pillager_now=true}] run function mad:system/ongame_team/advancements/adventure/whos_the_pillager_now

## Detect advancements - minecraft
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_cure_zombi=0},advancements={minecraft:story/cure_zombie_villager=true}] run function mad:system/ongame_team/advancements/story/cure_zombie_villager
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_deflect=0},advancements={minecraft:story/deflect_arrow=true}] run function mad:system/ongame_team/advancements/story/deflect_arrow
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_enchant=0},advancements={minecraft:story/enchant_item=true}] run function mad:system/ongame_team/advancements/story/enchant_item
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_enter_end=0},advancements={minecraft:story/enter_the_end=true}] run function mad:system/ongame_team/advancements/story/enter_the_end
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_enter_hell=0},advancements={minecraft:story/enter_the_nether=true}] run function mad:system/ongame_team/advancements/story/enter_the_nether
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_ender_eye=0},advancements={minecraft:story/follow_ender_eye=true}] run function mad:system/ongame_team/advancements/story/follow_ender_eye
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_obsidian=0},advancements={minecraft:story/form_obsidian=true}] run function mad:system/ongame_team/advancements/story/form_obsidian
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_iron_tools=0},advancements={minecraft:story/iron_tools=true}] run function mad:system/ongame_team/advancements/story/iron_tools
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_lava_bucke=0},advancements={minecraft:story/lava_bucket=true}] run function mad:system/ongame_team/advancements/story/lava_bucket
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_mine_dia=0},advancements={minecraft:story/mine_diamond=true}] run function mad:system/ongame_team/advancements/story/mine_diamond
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_mine_stone=0},advancements={minecraft:story/mine_stone=true}] run function mad:system/ongame_team/advancements/story/mine_stone
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_armor=0},advancements={minecraft:story/obtain_armor=true}] run function mad:system/ongame_team/advancements/story/obtain_armor
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_root=0},advancements={minecraft:story/root=true}] run function mad:system/ongame_team/advancements/story/root
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_shiny_gear=0},advancements={minecraft:story/shiny_gear=true}] run function mad:system/ongame_team/advancements/story/shiny_gear
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_smelt_iron=0},advancements={minecraft:story/smelt_iron=true}] run function mad:system/ongame_team/advancements/story/smelt_iron
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_mc_upgrade=0},advancements={minecraft:story/upgrade_tools=true}] run function mad:system/ongame_team/advancements/story/upgrade_tools

## Detect advancements - nether
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_all_effect=0},advancements={minecraft:nether/all_effects=true}] run function mad:system/ongame_team/advancements/nether/all_effects
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_all_potion=0},advancements={minecraft:nether/all_potions=true}] run function mad:system/ongame_team/advancements/nether/all_potions
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_brew_potio=0},advancements={minecraft:nether/brew_potion=true}] run function mad:system/ongame_team/advancements/nether/brew_potion
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_create_bc=0},advancements={minecraft:nether/create_beacon=true}] run function mad:system/ongame_team/advancements/nether/create_beacon
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_create_fbc=0},advancements={minecraft:nether/create_full_beacon=true}] run function mad:system/ongame_team/advancements/nether/create_full_beacon
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_fast_travl=0},advancements={minecraft:nether/fast_travel=true}] run function mad:system/ongame_team/advancements/nether/fast_travel
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_fortress=0},advancements={minecraft:nether/find_fortress=true}] run function mad:system/ongame_team/advancements/nether/find_fortress
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_get_wtskul=0},advancements={minecraft:nether/get_wither_skull=true}] run function mad:system/ongame_team/advancements/nether/get_wither_skull
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_blaze_rod=0},advancements={minecraft:nether/obtain_blaze_rod=true}] run function mad:system/ongame_team/advancements/nether/obtain_blaze_rod
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_rtrn_ghast=0},advancements={minecraft:nether/return_to_sender=true}] run function mad:system/ongame_team/advancements/nether/return_to_sender
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_root=0},advancements={minecraft:nether/root=true}] run function mad:system/ongame_team/advancements/nether/root
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_smn_wither=0},advancements={minecraft:nether/summon_wither=true}] run function mad:system/ongame_team/advancements/nether/summon_wither
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_nt_uneasy_alc=0},advancements={minecraft:nether/uneasy_alliance=true}] run function mad:system/ongame_team/advancements/nether/uneasy_alliance

## Detect advancements - end
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_drg_breath=0},advancements={minecraft:end/dragon_breath=true}] run function mad:system/ongame_team/advancements/end/dragon_breath
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_dragon_egg=0},advancements={minecraft:end/dragon_egg=true}] run function mad:system/ongame_team/advancements/end/dragon_egg
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_elytra=0},advancements={minecraft:end/elytra=true}] run function mad:system/ongame_team/advancements/end/elytra
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_end_gate=0},advancements={minecraft:end/enter_end_gateway=true}] run function mad:system/ongame_team/advancements/end/enter_end_gateway
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_end_city=0},advancements={minecraft:end/find_end_city=true}] run function mad:system/ongame_team/advancements/end/find_end_city
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_kill_dragn=0},advancements={minecraft:end/kill_dragon=true}] run function mad:system/ongame_team/advancements/end/kill_dragon
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_legitate=0},advancements={minecraft:end/levitate=true}] run function mad:system/ongame_team/advancements/end/levitate
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_resp_dragn=0},advancements={minecraft:end/respawn_dragon=true}] run function mad:system/ongame_team/advancements/end/respawn_dragon
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_ed_root=0},advancements={minecraft:end/root=true}] run function mad:system/ongame_team/advancements/end/root

## Detect advancements - husbandry
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_balanced=0},advancements={minecraft:husbandry/balanced_diet=true}] run function mad:system/ongame_team/advancements/husbandry/balanced_diet
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_bred_all=0},advancements={minecraft:husbandry/bred_all_animals=true}] run function mad:system/ongame_team/advancements/husbandry/bred_all_animals
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_bred_anima=0},advancements={minecraft:husbandry/breed_an_animal=true}] run function mad:system/ongame_team/advancements/husbandry/breed_an_animal
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_catalogue=0},advancements={minecraft:husbandry/complete_catalogue=true}] run function mad:system/ongame_team/advancements/husbandry/complete_catalogue
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_fishy=0},advancements={minecraft:husbandry/fishy_business=true}] run function mad:system/ongame_team/advancements/husbandry/fishy_business
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_plant_seed=0},advancements={minecraft:husbandry/plant_seed=true}] run function mad:system/ongame_team/advancements/husbandry/plant_seed
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_root=0},advancements={minecraft:husbandry/root=true}] run function mad:system/ongame_team/advancements/husbandry/root
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_tacti_fish=0},advancements={minecraft:husbandry/tactical_fishing=true}] run function mad:system/ongame_team/advancements/husbandry/tactical_fishing
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_hb_tame_anima=0},advancements={minecraft:husbandry/tame_an_animal=true}] run function mad:system/ongame_team/advancements/husbandry/tame_an_animal

## Detect advancements - potage00
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_pg_root=0},advancements={mad:root=true}] run function mad:system/ongame_team/advancements/potage00/root
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_pg_tsutenkaku=0},advancements={mad:tsutenkaku=true}] run function mad:system/ongame_team/advancements/potage00/tsutenkaku
execute as @a[tag=Participant,scores={Phase=21,Death=0,AD_pg_treasure=0},advancements={mad:treasure_hunt=true}] run function mad:system/ongame_team/advancements/potage00/treasure_hunt

## Detect version 1.14 advancements
execute if score #mad Version matches 14..15 run function mad:system/ongame_team/advancements/branch_1.14

## Detect version 1.15 advancements
execute if score #mad Version matches 15.. run function mad:system/ongame_team/advancements/branch_1.15

## Detect version 1.16 advancements
execute if score #mad Version matches 16.. run function mad:system/ongame_team/advancements/branch_1.16