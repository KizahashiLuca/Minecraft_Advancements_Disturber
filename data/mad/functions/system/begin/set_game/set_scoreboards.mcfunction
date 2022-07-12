#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboards
#### game phase
scoreboard players set #mad DataVersion 1444
scoreboard players set #mad Version 13
scoreboard players set #mad Phase 0
scoreboard players set #mad PrevPhase 0
scoreboard players set #mad Difficulty 0
scoreboard players set #mad ExitMessage 0
#### timer
scoreboard players set #mad 2 2
#### participants
scoreboard players set #mad Participant 0
scoreboard players set #mad NumOfParticipants 0
scoreboard players set #mad NumAlive 0
scoreboard players set #mad NumDead 0
#### position
scoreboard players set #mad PosX 0
scoreboard players set #mad PosY 63
scoreboard players set #mad PosZ 0
scoreboard players set #mad 45 45
#### randomizer
scoreboard players set #mad RandomSeed 0
scoreboard players set #mad RandomCount 10
scoreboard players set #mad RandomAnswer 0
scoreboard players set #mad RandomModder 2147483647
scoreboard players set #mad RandomMultiplier 48271
#### setting phase - choose time limit
scoreboard players set #mad 10 10
scoreboard players set #mad 100 100
scoreboard players set #mad 1000 1000
scoreboard players set #mad 10000 10000
scoreboard players set #mad TimeLimit 300
scoreboard players set #mad TimeLimitPrv 300
#### setting phase - choose area
scoreboard players set #mad WorldBorder 1000
scoreboard players set #mad WorldBorderPrv 1000
scoreboard players set #mad WorldBorderEnd 0
#### setting phase - choose difficulty
scoreboard players set #mad Difficulty 2
scoreboard players set #mad DifficultyPrv 2
#### setting phase - choose adding time
scoreboard players set #mad AddingTime 100
scoreboard players set #mad AddingTimePrv 100
#### setting phase - choose minecart interval
scoreboard players set #mad CartInterval 300
scoreboard players set #mad CartIntervalPrv 300
#### setting phase - choose gamerule
scoreboard players set #mad WeatherCycle 1
scoreboard players set #mad DaylightCycle 1
scoreboard players set #mad WeatherCyclePrv 1
scoreboard players set #mad DaylightCyclePrv 1
#### setting phase - choose team setting
scoreboard players set #mad IsTeam 0
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad VisibleName 1
scoreboard players set #mad VisibleInvis 1
scoreboard players set #mad VisibleDeath 1
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad NumberOfTeams 2
scoreboard players set #mad NumberOfBeacons 5
scoreboard players set #mad RespawnBannerTime -60
scoreboard players set #mad friendlyFirePrv 1
scoreboard players set #mad collisionRulePrv 1
scoreboard players set #mad VisibleNamePrv 1
scoreboard players set #mad VisibleInvisPrv 1
scoreboard players set #mad VisibleDeathPrv 1
scoreboard players set #mad SetTeamManualPrv 0
scoreboard players set #mad NumberOfTeamsPrv 2
scoreboard players set #mad NumberOfBeaconsPrv 5
scoreboard players set #mad RespawnBannerTimePrv -60
#### summons minecart
scoreboard players set #mad 300 300
scoreboard players set #mad SecondSummon 300
scoreboard players set #mad SecondEliminate 0
scoreboard players set #mad SummonInterval 300
scoreboard players set #mad SummonMinecart 0
#### team
scoreboard players set #mad TeamMemberNotExist 0
scoreboard players set #mad DeadTeamA 0
scoreboard players set #mad DeadTeamB 0
scoreboard players set #mad DeadTeamC 0
scoreboard players set #mad DeadTeamD 0
scoreboard players set #mad DeadTeamE 0
#### mobile respawn beacon
scoreboard players set #mad MobileBeaconNum 1
#### add-on
scoreboard players set #mad LoadAddon 0

#### game phase
scoreboard players set @a Phase 0
scoreboard players set @a Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMinecart 0
scoreboard players enable @a TeleportMinecart
scoreboard players set @a TeleportCenter 0
scoreboard players enable @a TeleportCenter
scoreboard players set @a ExitMessage 0
scoreboard players enable @a ExitMessage
#### timer
scoreboard players set @a Second 0
scoreboard players set @a Tick 0
scoreboard players set @a GeneralSecond 0
scoreboard players set @a SecondPerSurvive 0
#### participants
scoreboard players set @a Participant 0
scoreboard players set @a NumOfParticipants 0
scoreboard players set @a NumAlive 0
scoreboard players set @a NumDead 0
#### onground
scoreboard players set @a OnGround 0
#### setting phase - common
scoreboard players set @a ThrowItem 0
scoreboard players set @a Select02 0
scoreboard players set @a Select03 0
scoreboard players set @a Select04 0
scoreboard players set @a Select05 0
scoreboard players set @a Select06 0
scoreboard players set @a Select09 0
scoreboard players set @a Select10 0
scoreboard players set @a Select11 0
scoreboard players set @a Select12 0
scoreboard players set @a Select13 0
scoreboard players set @a Select14 0
scoreboard players set @a Select15 0
scoreboard players set @a Select16 0
scoreboard players set @a Select17 0
scoreboard players set @a Select18 0
scoreboard players set @a Select19 0
scoreboard players set @a Select20 0
scoreboard players set @a Select21 0
scoreboard players set @a Select22 0
scoreboard players set @a Select23 0
scoreboard players set @a Select24 0
scoreboard players set @a Select25 0
scoreboard players set @a Select26 0
scoreboard players set @a Select28 0
scoreboard players set @a Select31 0
scoreboard players set @a Select34 0
scoreboard players set @a Selected 0
#### setting phase - choose time limit
scoreboard players set @a GetTimeLimit 0
#### setting phase - choose area
scoreboard players set @a WorldBorder 1000
scoreboard players set @a WorldBorderPrv 1000
#### advancements
scoreboard players set @a HasAdvancements 0
#### advancements
scoreboard players set @a AD_Adventure_adventuring_time 0
scoreboard players set @a AD_Adventure_arbalistic 0
scoreboard players set @a AD_Adventure_avoid_vibration 0
scoreboard players set @a AD_Adventure_bullseye 0
scoreboard players set @a AD_Adventure_fall_from_world_height 0
scoreboard players set @a AD_Adventure_hero_of_the_village 0
scoreboard players set @a AD_Adventure_honey_block_slide 0
scoreboard players set @a AD_Adventure_kill_all_mobs 0
scoreboard players set @a AD_Adventure_kill_a_mob 0
scoreboard players set @a AD_Adventure_kill_mob_near_sculk_catalyst 0
scoreboard players set @a AD_Adventure_lightning_rod_with_villager_no_fire 0
scoreboard players set @a AD_Adventure_ol_betsy 0
scoreboard players set @a AD_Adventure_play_jukebox_in_meadows 0
scoreboard players set @a AD_Adventure_root 0
scoreboard players set @a AD_Adventure_shoot_arrow 0
scoreboard players set @a AD_Adventure_sleep_in_bed 0
scoreboard players set @a AD_Adventure_sniper_duel 0
scoreboard players set @a AD_Adventure_spyglass_at_dragon 0
scoreboard players set @a AD_Adventure_spyglass_at_ghast 0
scoreboard players set @a AD_Adventure_spyglass_at_parrot 0
scoreboard players set @a AD_Adventure_summon_iron_golem 0
scoreboard players set @a AD_Adventure_throw_trident 0
scoreboard players set @a AD_Adventure_totem_of_undying 0
scoreboard players set @a AD_Adventure_trade 0
scoreboard players set @a AD_Adventure_trade_at_world_height 0
scoreboard players set @a AD_Adventure_two_birds_one_arrow 0
scoreboard players set @a AD_Adventure_very_very_frightening 0
scoreboard players set @a AD_Adventure_voluntary_exile 0
scoreboard players set @a AD_Adventure_walk_on_powder_snow_with_leather_boots 0
scoreboard players set @a AD_Adventure_whos_the_pillager_now 0
scoreboard players set @a AD_End_dragon_breath 0
scoreboard players set @a AD_End_dragon_egg 0
scoreboard players set @a AD_End_elytra 0
scoreboard players set @a AD_End_enter_end_gateway 0
scoreboard players set @a AD_End_find_end_city 0
scoreboard players set @a AD_End_kill_dragon 0
scoreboard players set @a AD_End_levitate 0
scoreboard players set @a AD_End_respawn_dragon 0
scoreboard players set @a AD_End_root 0
scoreboard players set @a AD_Husbandry_allay_deliver_cake_to_note_block 0
scoreboard players set @a AD_Husbandry_allay_deliver_item_to_player 0
scoreboard players set @a AD_Husbandry_axolotl_in_a_bucket 0
scoreboard players set @a AD_Husbandry_balanced_diet 0
scoreboard players set @a AD_Husbandry_bred_all_animals 0
scoreboard players set @a AD_Husbandry_breed_an_animal 0
scoreboard players set @a AD_Husbandry_complete_catalogue 0
scoreboard players set @a AD_Husbandry_fishy_business 0
scoreboard players set @a AD_Husbandry_froglights 0
scoreboard players set @a AD_Husbandry_kill_axolotl_target 0
scoreboard players set @a AD_Husbandry_leash_all_frog_variants 0
scoreboard players set @a AD_Husbandry_make_a_sign_glow 0
scoreboard players set @a AD_Husbandry_obtain_netherite_hoe 0
scoreboard players set @a AD_Husbandry_plant_seed 0
scoreboard players set @a AD_Husbandry_ride_a_boat_with_a_goat 0
scoreboard players set @a AD_Husbandry_root 0
scoreboard players set @a AD_Husbandry_safely_harvest_honey 0
scoreboard players set @a AD_Husbandry_silk_touch_nest 0
scoreboard players set @a AD_Husbandry_tactical_fishing 0
scoreboard players set @a AD_Husbandry_tadpole_in_a_bucket 0
scoreboard players set @a AD_Husbandry_tame_an_animal 0
scoreboard players set @a AD_Husbandry_wax_off 0
scoreboard players set @a AD_Husbandry_wax_on 0
scoreboard players set @a AD_Nether_all_effects 0
scoreboard players set @a AD_Nether_all_potions 0
scoreboard players set @a AD_Nether_brew_potion 0
scoreboard players set @a AD_Nether_charge_respawn_anchor 0
scoreboard players set @a AD_Nether_create_beacon 0
scoreboard players set @a AD_Nether_create_full_beacon 0
scoreboard players set @a AD_Nether_distract_piglin 0
scoreboard players set @a AD_Nether_explore_nether 0
scoreboard players set @a AD_Nether_fast_travel 0
scoreboard players set @a AD_Nether_find_bastion 0
scoreboard players set @a AD_Nether_find_fortress 0
scoreboard players set @a AD_Nether_get_wither_skull 0
scoreboard players set @a AD_Nether_loot_bastion 0
scoreboard players set @a AD_Nether_netherite_armor 0
scoreboard players set @a AD_Nether_obtain_ancient_debris 0
scoreboard players set @a AD_Nether_obtain_blaze_rod 0
scoreboard players set @a AD_Nether_obtain_crying_obsidian 0
scoreboard players set @a AD_Nether_return_to_sender 0
scoreboard players set @a AD_Nether_ride_strider 0
scoreboard players set @a AD_Nether_ride_strider_in_overworld_lava 0
scoreboard players set @a AD_Nether_root 0
scoreboard players set @a AD_Nether_summon_wither 0
scoreboard players set @a AD_Nether_uneasy_alliance 0
scoreboard players set @a AD_Nether_use_lodestone 0
scoreboard players set @a AD_Story_cure_zombie_villager 0
scoreboard players set @a AD_Story_deflect_arrow 0
scoreboard players set @a AD_Story_enchant_item 0
scoreboard players set @a AD_Story_enter_the_end 0
scoreboard players set @a AD_Story_enter_the_nether 0
scoreboard players set @a AD_Story_follow_ender_eye 0
scoreboard players set @a AD_Story_form_obsidian 0
scoreboard players set @a AD_Story_iron_tools 0
scoreboard players set @a AD_Story_lava_bucket 0
scoreboard players set @a AD_Story_mine_diamond 0
scoreboard players set @a AD_Story_mine_stone 0
scoreboard players set @a AD_Story_obtain_armor 0
scoreboard players set @a AD_Story_root 0
scoreboard players set @a AD_Story_shiny_gear 0
scoreboard players set @a AD_Story_smelt_iron 0
scoreboard players set @a AD_Story_upgrade_tools 0
#### advancements - potage00
scoreboard players set @a AD_pg_root 0
scoreboard players set @a AD_pg_minecart 0
scoreboard players set @a AD_pg_kubikari 0
scoreboard players set @a AD_pg_tsutenkaku 0
scoreboard players set @a AD_pg_treasure 0
scoreboard players set @a AD_pg_3litpigs 0
scoreboard players set @a AD_pg_brk_spawn 0
scoreboard players set @a AD_pg_near_bord 0
scoreboard players set @a AD_pg_kill_phant 0
scoreboard players set @a AD_pg_kill_ender 0
scoreboard players set @a AD_pg_frinedship 0
scoreboard players set @a BreakSpawner 0
#### advancements - achievements
scoreboard players set @a AD_ac_root 0
scoreboard players set @a AD_ac_buildsword 0
scoreboard players set @a AD_ac_diamonds2u 0
scoreboard players set @a AD_ac_fly_pig 0
scoreboard players set @a AD_ac_kill_cow 0
scoreboard players set @a AD_ac_on_a_rail 0
scoreboard players set @a FallDistance 0
scoreboard players set @a RailDistance 0
#### summons minecart
scoreboard players set @a GetMinecartCount 0
#### transmitter
scoreboard players set @a UseTransmitter 0
scoreboard players set @a TransmitterPosX 0
scoreboard players set @a TransmitterPosY 0
scoreboard players set @a TransmitterPosZ 0
scoreboard players set @a SetRespawnBanner 0
#### emergency call
scoreboard players set @a UseEmergencyCall 0
#### armor upgrader
scoreboard players set @a UseArmorUpgrader 0
#### tool upgrader
scoreboard players set @a UseToolUpgrader 0
#### notice of thief
scoreboard players set @a UseNoticeOfThief 0
scoreboard players set @a StealItemPlayer 0
scoreboard players set @a ThiefTick 0
scoreboard players set @a ThiefSecond 5
#### evoker fangs wand
scoreboard players set @a UseFungusStick 0
#### mobile respawn beacon
scoreboard players set @a MobileBeaconNum 0
#### team
scoreboard players set @a DeadOwnTeam 0
scoreboard players set @a DeadTeamA 0
scoreboard players set @a DeadTeamB 0
scoreboard players set @a DeadTeamC 0
scoreboard players set @a DeadTeamD 0
scoreboard players set @a DeadTeamE 0
scoreboard players set @a NumOfTeamPlayer 0
#### result
scoreboard players set @a ResultTmp 0