#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboards
#### game phase
scoreboard objectives add DataVersion dummy
scoreboard objectives add Version dummy
scoreboard objectives add Phase dummy
scoreboard objectives add PrevPhase dummy
scoreboard objectives add Death minecraft.custom:minecraft.deaths
scoreboard objectives add Kill dummy
scoreboard objectives add KillTemp minecraft.custom:minecraft.player_kills
scoreboard objectives add TeleportMinecart trigger
scoreboard objectives add TeleportCenter trigger
scoreboard objectives add ExitMessage trigger
#### timer
scoreboard objectives add 2 dummy
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
scoreboard objectives add GeneralSecond dummy
scoreboard objectives add SecondPerSurvive dummy
#### participants
scoreboard objectives add Participant dummy
scoreboard objectives add NumParticipant dummy
scoreboard objectives add NumAlive dummy
scoreboard objectives add NumDead dummy
#### onground
scoreboard objectives add OnGround dummy
#### position
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add 45 dummy
scoreboard objectives add Angle dummy
#### randomizer
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
#### setting phase - common
scoreboard objectives add ThrowItem dummy
scoreboard objectives add Select02 dummy
scoreboard objectives add Select03 dummy
scoreboard objectives add Select04 dummy
scoreboard objectives add Select05 dummy
scoreboard objectives add Select06 dummy
scoreboard objectives add Select09 dummy
scoreboard objectives add Select10 dummy
scoreboard objectives add Select11 dummy
scoreboard objectives add Select12 dummy
scoreboard objectives add Select13 dummy
scoreboard objectives add Select14 dummy
scoreboard objectives add Select15 dummy
scoreboard objectives add Select16 dummy
scoreboard objectives add Select17 dummy
scoreboard objectives add Select18 dummy
scoreboard objectives add Select19 dummy
scoreboard objectives add Select20 dummy
scoreboard objectives add Select21 dummy
scoreboard objectives add Select22 dummy
scoreboard objectives add Select23 dummy
scoreboard objectives add Select24 dummy
scoreboard objectives add Select25 dummy
scoreboard objectives add Select26 dummy
scoreboard objectives add Select28 dummy
scoreboard objectives add Select31 dummy
scoreboard objectives add Select34 dummy
scoreboard objectives add Selected dummy
#### setting phase - choose time limit
scoreboard objectives add 10 dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 1000 dummy
scoreboard objectives add 10000 dummy
scoreboard objectives add digit_0001 dummy
scoreboard objectives add digit_0010 dummy
scoreboard objectives add digit_0100 dummy
scoreboard objectives add digit_1000 dummy
scoreboard objectives add TimeLimit dummy
scoreboard objectives add TimeLimitPrv dummy
scoreboard objectives add GetTimeLimit dummy
#### setting phase - choose area
scoreboard objectives add WorldBorder dummy
scoreboard objectives add WorldBorderPrv dummy
scoreboard objectives add WorldBorderEnd dummy
scoreboard objectives add PosXCeil dummy
scoreboard objectives add PosZCeil dummy
scoreboard objectives add PosXFloor dummy
scoreboard objectives add PosZFloor dummy
#### setting phase - choose difficulty
scoreboard objectives add Difficulty dummy
scoreboard objectives add DifficultyPrv dummy
#### setting phase - choose adding time
scoreboard objectives add AddingTime dummy
scoreboard objectives add AddingTimePrv dummy
#### setting phase - choose minecart interval
scoreboard objectives add CartInterval dummy
scoreboard objectives add CartIntervalPrv dummy
#### setting phase - choose gamerule
scoreboard objectives add WeatherCycle dummy
scoreboard objectives add DaylightCycle dummy
scoreboard objectives add WeatherCyclePrv dummy
scoreboard objectives add DaylightCyclePrv dummy
#### setting phase - choose team setting
scoreboard objectives add IsTeam dummy
scoreboard objectives add friendlyFire dummy
scoreboard objectives add collisionRule dummy
scoreboard objectives add VisibleName dummy
scoreboard objectives add VisibleInvis dummy
scoreboard objectives add VisibleDeath dummy
scoreboard objectives add SetTeamManual dummy
scoreboard objectives add TeamNumber dummy
scoreboard objectives add BeaconNumber dummy
scoreboard objectives add RespawnTime dummy
scoreboard objectives add friendlyFirePrv dummy
scoreboard objectives add collisionRulePrv dummy
scoreboard objectives add VisibleNamePrv dummy
scoreboard objectives add VisibleInvisPrv dummy
scoreboard objectives add VisibleDeathPrv dummy
scoreboard objectives add SetTeamManualPrv dummy
scoreboard objectives add TeamNumberPrv dummy
scoreboard objectives add BeaconNumberPrv dummy
scoreboard objectives add RespawnTimePrv dummy
#### advancements
scoreboard objectives add HasAdvancements dummy
#### advancements
scoreboard objectives add AD_Adventure_adventuring_time dummy
scoreboard objectives add AD_Adventure_arbalistic dummy
scoreboard objectives add AD_Adventure_avoid_vibration dummy
scoreboard objectives add AD_Adventure_bullseye dummy
scoreboard objectives add AD_Adventure_fall_from_world_height dummy
scoreboard objectives add AD_Adventure_hero_of_the_village dummy
scoreboard objectives add AD_Adventure_honey_block_slide dummy
scoreboard objectives add AD_Adventure_kill_all_mobs dummy
scoreboard objectives add AD_Adventure_kill_a_mob dummy
scoreboard objectives add AD_Adventure_kill_mob_near_sculk_catalyst dummy
scoreboard objectives add AD_Adventure_lightning_rod_with_villager_no_fire dummy
scoreboard objectives add AD_Adventure_ol_betsy dummy
scoreboard objectives add AD_Adventure_play_jukebox_in_meadows dummy
scoreboard objectives add AD_Adventure_root dummy
scoreboard objectives add AD_Adventure_shoot_arrow dummy
scoreboard objectives add AD_Adventure_sleep_in_bed dummy
scoreboard objectives add AD_Adventure_sniper_duel dummy
scoreboard objectives add AD_Adventure_spyglass_at_dragon dummy
scoreboard objectives add AD_Adventure_spyglass_at_ghast dummy
scoreboard objectives add AD_Adventure_spyglass_at_parrot dummy
scoreboard objectives add AD_Adventure_summon_iron_golem dummy
scoreboard objectives add AD_Adventure_throw_trident dummy
scoreboard objectives add AD_Adventure_totem_of_undying dummy
scoreboard objectives add AD_Adventure_trade dummy
scoreboard objectives add AD_Adventure_trade_at_world_height dummy
scoreboard objectives add AD_Adventure_two_birds_one_arrow dummy
scoreboard objectives add AD_Adventure_very_very_frightening dummy
scoreboard objectives add AD_Adventure_voluntary_exile dummy
scoreboard objectives add AD_Adventure_walk_on_powder_snow_with_leather_boots dummy
scoreboard objectives add AD_Adventure_whos_the_pillager_now dummy
scoreboard objectives add AD_End_dragon_breath dummy
scoreboard objectives add AD_End_dragon_egg dummy
scoreboard objectives add AD_End_elytra dummy
scoreboard objectives add AD_End_enter_end_gateway dummy
scoreboard objectives add AD_End_find_end_city dummy
scoreboard objectives add AD_End_kill_dragon dummy
scoreboard objectives add AD_End_levitate dummy
scoreboard objectives add AD_End_respawn_dragon dummy
scoreboard objectives add AD_End_root dummy
scoreboard objectives add AD_Husbandry_allay_deliver_cake_to_note_block dummy
scoreboard objectives add AD_Husbandry_allay_deliver_item_to_player dummy
scoreboard objectives add AD_Husbandry_axolotl_in_a_bucket dummy
scoreboard objectives add AD_Husbandry_balanced_diet dummy
scoreboard objectives add AD_Husbandry_bred_all_animals dummy
scoreboard objectives add AD_Husbandry_breed_an_animal dummy
scoreboard objectives add AD_Husbandry_complete_catalogue dummy
scoreboard objectives add AD_Husbandry_fishy_business dummy
scoreboard objectives add AD_Husbandry_froglights dummy
scoreboard objectives add AD_Husbandry_kill_axolotl_target dummy
scoreboard objectives add AD_Husbandry_leash_all_frog_variants dummy
scoreboard objectives add AD_Husbandry_make_a_sign_glow dummy
scoreboard objectives add AD_Husbandry_obtain_netherite_hoe dummy
scoreboard objectives add AD_Husbandry_plant_seed dummy
scoreboard objectives add AD_Husbandry_ride_a_boat_with_a_goat dummy
scoreboard objectives add AD_Husbandry_root dummy
scoreboard objectives add AD_Husbandry_safely_harvest_honey dummy
scoreboard objectives add AD_Husbandry_silk_touch_nest dummy
scoreboard objectives add AD_Husbandry_tactical_fishing dummy
scoreboard objectives add AD_Husbandry_tadpole_in_a_bucket dummy
scoreboard objectives add AD_Husbandry_tame_an_animal dummy
scoreboard objectives add AD_Husbandry_wax_off dummy
scoreboard objectives add AD_Husbandry_wax_on dummy
scoreboard objectives add AD_Nether_all_effects dummy
scoreboard objectives add AD_Nether_all_potions dummy
scoreboard objectives add AD_Nether_brew_potion dummy
scoreboard objectives add AD_Nether_charge_respawn_anchor dummy
scoreboard objectives add AD_Nether_create_beacon dummy
scoreboard objectives add AD_Nether_create_full_beacon dummy
scoreboard objectives add AD_Nether_distract_piglin dummy
scoreboard objectives add AD_Nether_explore_nether dummy
scoreboard objectives add AD_Nether_fast_travel dummy
scoreboard objectives add AD_Nether_find_bastion dummy
scoreboard objectives add AD_Nether_find_fortress dummy
scoreboard objectives add AD_Nether_get_wither_skull dummy
scoreboard objectives add AD_Nether_loot_bastion dummy
scoreboard objectives add AD_Nether_netherite_armor dummy
scoreboard objectives add AD_Nether_obtain_ancient_debris dummy
scoreboard objectives add AD_Nether_obtain_blaze_rod dummy
scoreboard objectives add AD_Nether_obtain_crying_obsidian dummy
scoreboard objectives add AD_Nether_return_to_sender dummy
scoreboard objectives add AD_Nether_ride_strider dummy
scoreboard objectives add AD_Nether_ride_strider_in_overworld_lava dummy
scoreboard objectives add AD_Nether_root dummy
scoreboard objectives add AD_Nether_summon_wither dummy
scoreboard objectives add AD_Nether_uneasy_alliance dummy
scoreboard objectives add AD_Nether_use_lodestone dummy
scoreboard objectives add AD_Story_cure_zombie_villager dummy
scoreboard objectives add AD_Story_deflect_arrow dummy
scoreboard objectives add AD_Story_enchant_item dummy
scoreboard objectives add AD_Story_enter_the_end dummy
scoreboard objectives add AD_Story_enter_the_nether dummy
scoreboard objectives add AD_Story_follow_ender_eye dummy
scoreboard objectives add AD_Story_form_obsidian dummy
scoreboard objectives add AD_Story_iron_tools dummy
scoreboard objectives add AD_Story_lava_bucket dummy
scoreboard objectives add AD_Story_mine_diamond dummy
scoreboard objectives add AD_Story_mine_stone dummy
scoreboard objectives add AD_Story_obtain_armor dummy
scoreboard objectives add AD_Story_root dummy
scoreboard objectives add AD_Story_shiny_gear dummy
scoreboard objectives add AD_Story_smelt_iron dummy
scoreboard objectives add AD_Story_upgrade_tools dummy
#### advancements - potage00
scoreboard objectives add AD_pg_root dummy {"text":"MAD"}
scoreboard objectives add AD_pg_minecart dummy {"text":"支援物資だ!"}
scoreboard objectives add AD_pg_kubikari dummy {"text":"首狩りスティーブ"}
scoreboard objectives add AD_pg_tsutenkaku dummy {"text":"通天閣からの眺め"}
scoreboard objectives add AD_pg_treasure dummy {"text":"宝探し"}
scoreboard objectives add AD_pg_3litpigs dummy {"text":"3匹の子豚"}
scoreboard objectives add AD_pg_brk_spawn dummy {"text":"君子危うきに近寄らず"}
scoreboard objectives add AD_pg_near_bord dummy {"text":"この世界の片隅に"}
scoreboard objectives add AD_pg_kill_phant dummy {"text":"NO BED NO LIFE"}
scoreboard objectives add AD_pg_kill_ender dummy {"text":"消える暗闇"}
scoreboard objectives add AD_pg_frinedship dummy {"text":"仲間思い"}
scoreboard objectives add BreakSpawner minecraft.mined:minecraft.spawner
#### advancements - achievements
scoreboard objectives add AD_ac_root dummy {"text":"実績"}
scoreboard objectives add AD_ac_buildsword dummy {"text":"いざ突撃！"}
scoreboard objectives add AD_ac_diamonds2u dummy {"text":"ダイヤモンドをあなたに！"}
scoreboard objectives add AD_ac_fly_pig dummy {"text":"ブタさんの飛ぶ頃に"}
scoreboard objectives add AD_ac_kill_cow dummy {"text":"牛転がし"}
scoreboard objectives add AD_ac_on_a_rail dummy {"text":"世界のトロッコから"}
scoreboard objectives add FallDistance dummy
scoreboard objectives add RailDistance minecraft.custom:minecraft.minecart_one_cm
#### summons minecart
scoreboard objectives add 300 dummy
scoreboard objectives add SecondSummon dummy
scoreboard objectives add SecondEliminate dummy
scoreboard objectives add SummonInterval dummy
scoreboard objectives add SummonMinecart dummy
scoreboard objectives add MinecartBranch dummy
scoreboard objectives add GetMinecartCount dummy
scoreboard objectives add HasLootTable dummy
#### transmitter
scoreboard objectives add UseTransmitter minecraft.used:minecraft.vindicator_spawn_egg
scoreboard objectives add TransmitterPosX dummy
scoreboard objectives add TransmitterPosY dummy
scoreboard objectives add TransmitterPosZ dummy
scoreboard objectives add BannerDimension dummy
scoreboard objectives add BannerPosX dummy
scoreboard objectives add BannerPosY dummy
scoreboard objectives add BannerPosZ dummy
scoreboard objectives add SetRespawnBanner dummy
scoreboard objectives add TempBannerNum dummy
#### emergency call
scoreboard objectives add UseEmergencyCall minecraft.used:minecraft.zombie_horse_spawn_egg
#### armor upgrader
scoreboard objectives add UseArmorUpgrader minecraft.used:minecraft.bat_spawn_egg
#### tool upgrader
scoreboard objectives add UseToolUpgrader minecraft.used:minecraft.turtle_spawn_egg
#### notice of thief
scoreboard objectives add UseNoticeOfThief minecraft.used:minecraft.rabbit_spawn_egg
scoreboard objectives add StealItemPlayer dummy
scoreboard objectives add ThiefTick dummy
scoreboard objectives add ThiefSecond dummy
#### evoker fangs wand
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add EvokerFangsCount dummy
#### mobile respawn beacon
scoreboard objectives add MobileBeaconNum dummy
scoreboard objectives add MobileBeaconTmp dummy
#### team
scoreboard objectives add TeamBoolean dummy
scoreboard objectives add DeadOwnTeam dummy
scoreboard objectives add DeadTeamA dummy
scoreboard objectives add DeadTeamB dummy
scoreboard objectives add DeadTeamC dummy
scoreboard objectives add DeadTeamD dummy
scoreboard objectives add DeadTeamE dummy
scoreboard objectives add NumOfTeamPlayer dummy
#### result
scoreboard objectives add ResultTmp dummy
#### add-on
scoreboard objectives add LoadAddon dummy

## Set scoreboards
#### game phase
scoreboard players set #mad DataVersion 2860
scoreboard players set #mad Version 18
scoreboard players set #mad Phase 0
scoreboard players set #mad PrevPhase 0
scoreboard players set #mad Difficulty 0
scoreboard players set #mad ExitMessage 0
#### timer
scoreboard players set #mad 2 2
#### participants
scoreboard players set #mad Participant 0
scoreboard players set #mad NumParticipant 0
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
scoreboard players set #mad TimeLimit 100
scoreboard players set #mad TimeLimitPrv 100
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
scoreboard players set #mad VisibleName 0
scoreboard players set #mad VisibleInvis 0
scoreboard players set #mad VisibleDeath 0
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad TeamNumber 2
scoreboard players set #mad BeaconNumber 1
scoreboard players set #mad RespawnTime 0
scoreboard players set #mad friendlyFirePrv 1
scoreboard players set #mad collisionRulePrv 1
scoreboard players set #mad VisibleNamePrv 0
scoreboard players set #mad VisibleInvisPrv 0
scoreboard players set #mad VisibleDeathPrv 0
scoreboard players set #mad SetTeamManualPrv 0
scoreboard players set #mad TeamNumberPrv 2
scoreboard players set #mad BeaconNumberPrv 1
scoreboard players set #mad RespawnTimePrv 0
#### summons minecart
scoreboard players set #mad 300 300
scoreboard players set #mad SecondSummon 300
scoreboard players set #mad SecondEliminate 0
scoreboard players set #mad SummonInterval 300
scoreboard players set #mad SummonMinecart 0
scoreboard players set #mad MinecartBranch 0
#### team
scoreboard players set #mad TeamBoolean 0
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
scoreboard players set @a NumParticipant 0
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

## Random
function mad:system/random_generator/initialize