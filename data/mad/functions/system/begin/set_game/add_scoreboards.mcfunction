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
scoreboard objectives add NumOfParticipants dummy
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
scoreboard objectives add Digit0001 dummy
scoreboard objectives add Digit0010 dummy
scoreboard objectives add Digit0100 dummy
scoreboard objectives add Digit1000 dummy
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
scoreboard objectives add NumberOfTeams dummy
scoreboard objectives add NumberOfBeacons dummy
scoreboard objectives add RespawnBannerTime dummy
scoreboard objectives add friendlyFirePrv dummy
scoreboard objectives add collisionRulePrv dummy
scoreboard objectives add VisibleNamePrv dummy
scoreboard objectives add VisibleInvisPrv dummy
scoreboard objectives add VisibleDeathPrv dummy
scoreboard objectives add SetTeamManualPrv dummy
scoreboard objectives add NumberOfTeamsPrv dummy
scoreboard objectives add NumberOfBeaconsPrv dummy
scoreboard objectives add RespawnBannerTimePrv dummy
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
scoreboard objectives add TeamMemberNotExist dummy
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