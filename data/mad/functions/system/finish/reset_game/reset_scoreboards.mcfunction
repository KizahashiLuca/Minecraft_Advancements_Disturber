#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Remove scoreboards
#### game phase
scoreboard objectives remove DataVersion
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove PrevPhase
scoreboard objectives remove Death
scoreboard objectives remove Kill
scoreboard objectives remove KillTemp
scoreboard objectives remove TeleportMinecart
scoreboard objectives remove TeleportCenter
scoreboard objectives remove ExitMessage
#### timer
scoreboard objectives remove 2
scoreboard objectives remove Second
scoreboard objectives remove Tick
scoreboard objectives remove GeneralSecond
scoreboard objectives remove SecondPerSurvive
#### participants
scoreboard objectives remove ParticipantNumber
scoreboard objectives remove NumOfParticipants
scoreboard objectives remove NumAlive
scoreboard objectives remove NumDead
#### onground
scoreboard objectives remove OnGround
#### position
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove 45
scoreboard objectives remove Angle
#### randomizer
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
#### setting phase - choose time limit
scoreboard objectives remove 10
scoreboard objectives remove 100
scoreboard objectives remove 1000
scoreboard objectives remove 10000
scoreboard objectives remove Digit0001
scoreboard objectives remove Digit0010
scoreboard objectives remove Digit0100
scoreboard objectives remove Digit1000
scoreboard objectives remove TimeLimit
scoreboard objectives remove TimeLimitPrv
scoreboard objectives remove GetTimeLimit
#### setting phase - choose area
scoreboard objectives remove WorldBorder
scoreboard objectives remove WorldBorderTmp
scoreboard objectives remove WorldBorderPrv
scoreboard objectives remove WorldBorderEnd
scoreboard objectives remove PosXCeil
scoreboard objectives remove PosZCeil
scoreboard objectives remove PosXFloor
scoreboard objectives remove PosZFloor
#### setting phase - choose difficulty
scoreboard objectives remove Difficulty
scoreboard objectives remove DifficultyPrv
#### setting phase - choose adding time
scoreboard objectives remove AddingTime
scoreboard objectives remove AddingTimePrv
#### setting phase - choose minecart interval
scoreboard objectives remove CartInterval
scoreboard objectives remove CartIntervalPrv
#### setting phase - choose gamerule
scoreboard objectives remove WeatherCycle
scoreboard objectives remove DaylightCycle
scoreboard objectives remove NumberOfMinecarts
scoreboard objectives remove WeatherCyclePrv
scoreboard objectives remove DaylightCyclePrv
scoreboard objectives remove NumberOfMinecartsPrv
#### setting phase - choose team setting
scoreboard objectives remove IsTeam
scoreboard objectives remove friendlyFire
scoreboard objectives remove collisionRule
scoreboard objectives remove VisibleName
scoreboard objectives remove VisibleInvis
scoreboard objectives remove VisibleDeath
scoreboard objectives remove SetTeamManual
scoreboard objectives remove NumberOfTeams
scoreboard objectives remove NumberOfBeacons
scoreboard objectives remove RespawnBannerTime
scoreboard objectives remove friendlyFirePrv
scoreboard objectives remove collisionRulePrv
scoreboard objectives remove VisibleNamePrv
scoreboard objectives remove VisibleInvisPrv
scoreboard objectives remove VisibleDeathPrv
scoreboard objectives remove SetTeamManualPrv
scoreboard objectives remove NumberOfTeamsPrv
scoreboard objectives remove NumberOfBeaconsPrv
scoreboard objectives remove RespawnBannerTimePrv
#### wait phase
scoreboard objectives remove WaitTime
#### advancements
scoreboard objectives remove HasAdvancements
#### advancements
scoreboard objectives remove AD_Adventure_adventuring_time
scoreboard objectives remove AD_Adventure_arbalistic
scoreboard objectives remove AD_Adventure_avoid_vibration
scoreboard objectives remove AD_Adventure_bullseye
scoreboard objectives remove AD_Adventure_fall_from_world_height
scoreboard objectives remove AD_Adventure_hero_of_the_village
scoreboard objectives remove AD_Adventure_honey_block_slide
scoreboard objectives remove AD_Adventure_kill_all_mobs
scoreboard objectives remove AD_Adventure_kill_a_mob
scoreboard objectives remove AD_Adventure_kill_mob_near_sculk_catalyst
scoreboard objectives remove AD_Adventure_lightning_rod_with_villager_no_fire
scoreboard objectives remove AD_Adventure_ol_betsy
scoreboard objectives remove AD_Adventure_play_jukebox_in_meadows
scoreboard objectives remove AD_Adventure_root
scoreboard objectives remove AD_Adventure_shoot_arrow
scoreboard objectives remove AD_Adventure_sleep_in_bed
scoreboard objectives remove AD_Adventure_sniper_duel
scoreboard objectives remove AD_Adventure_spyglass_at_dragon
scoreboard objectives remove AD_Adventure_spyglass_at_ghast
scoreboard objectives remove AD_Adventure_spyglass_at_parrot
scoreboard objectives remove AD_Adventure_summon_iron_golem
scoreboard objectives remove AD_Adventure_throw_trident
scoreboard objectives remove AD_Adventure_totem_of_undying
scoreboard objectives remove AD_Adventure_trade
scoreboard objectives remove AD_Adventure_trade_at_world_height
scoreboard objectives remove AD_Adventure_two_birds_one_arrow
scoreboard objectives remove AD_Adventure_very_very_frightening
scoreboard objectives remove AD_Adventure_voluntary_exile
scoreboard objectives remove AD_Adventure_walk_on_powder_snow_with_leather_boots
scoreboard objectives remove AD_Adventure_whos_the_pillager_now
scoreboard objectives remove AD_End_dragon_breath
scoreboard objectives remove AD_End_dragon_egg
scoreboard objectives remove AD_End_elytra
scoreboard objectives remove AD_End_enter_end_gateway
scoreboard objectives remove AD_End_find_end_city
scoreboard objectives remove AD_End_kill_dragon
scoreboard objectives remove AD_End_levitate
scoreboard objectives remove AD_End_respawn_dragon
scoreboard objectives remove AD_End_root
scoreboard objectives remove AD_Husbandry_allay_deliver_cake_to_note_block
scoreboard objectives remove AD_Husbandry_allay_deliver_item_to_player
scoreboard objectives remove AD_Husbandry_axolotl_in_a_bucket
scoreboard objectives remove AD_Husbandry_balanced_diet
scoreboard objectives remove AD_Husbandry_bred_all_animals
scoreboard objectives remove AD_Husbandry_breed_an_animal
scoreboard objectives remove AD_Husbandry_complete_catalogue
scoreboard objectives remove AD_Husbandry_fishy_business
scoreboard objectives remove AD_Husbandry_froglights
scoreboard objectives remove AD_Husbandry_kill_axolotl_target
scoreboard objectives remove AD_Husbandry_leash_all_frog_variants
scoreboard objectives remove AD_Husbandry_make_a_sign_glow
scoreboard objectives remove AD_Husbandry_obtain_netherite_hoe
scoreboard objectives remove AD_Husbandry_plant_seed
scoreboard objectives remove AD_Husbandry_ride_a_boat_with_a_goat
scoreboard objectives remove AD_Husbandry_root
scoreboard objectives remove AD_Husbandry_safely_harvest_honey
scoreboard objectives remove AD_Husbandry_silk_touch_nest
scoreboard objectives remove AD_Husbandry_tactical_fishing
scoreboard objectives remove AD_Husbandry_tadpole_in_a_bucket
scoreboard objectives remove AD_Husbandry_tame_an_animal
scoreboard objectives remove AD_Husbandry_wax_off
scoreboard objectives remove AD_Husbandry_wax_on
scoreboard objectives remove AD_Nether_all_effects
scoreboard objectives remove AD_Nether_all_potions
scoreboard objectives remove AD_Nether_brew_potion
scoreboard objectives remove AD_Nether_charge_respawn_anchor
scoreboard objectives remove AD_Nether_create_beacon
scoreboard objectives remove AD_Nether_create_full_beacon
scoreboard objectives remove AD_Nether_distract_piglin
scoreboard objectives remove AD_Nether_explore_nether
scoreboard objectives remove AD_Nether_fast_travel
scoreboard objectives remove AD_Nether_find_bastion
scoreboard objectives remove AD_Nether_find_fortress
scoreboard objectives remove AD_Nether_get_wither_skull
scoreboard objectives remove AD_Nether_loot_bastion
scoreboard objectives remove AD_Nether_netherite_armor
scoreboard objectives remove AD_Nether_obtain_ancient_debris
scoreboard objectives remove AD_Nether_obtain_blaze_rod
scoreboard objectives remove AD_Nether_obtain_crying_obsidian
scoreboard objectives remove AD_Nether_return_to_sender
scoreboard objectives remove AD_Nether_ride_strider
scoreboard objectives remove AD_Nether_ride_strider_in_overworld_lava
scoreboard objectives remove AD_Nether_root
scoreboard objectives remove AD_Nether_summon_wither
scoreboard objectives remove AD_Nether_uneasy_alliance
scoreboard objectives remove AD_Nether_use_lodestone
scoreboard objectives remove AD_Story_cure_zombie_villager
scoreboard objectives remove AD_Story_deflect_arrow
scoreboard objectives remove AD_Story_enchant_item
scoreboard objectives remove AD_Story_enter_the_end
scoreboard objectives remove AD_Story_enter_the_nether
scoreboard objectives remove AD_Story_follow_ender_eye
scoreboard objectives remove AD_Story_form_obsidian
scoreboard objectives remove AD_Story_iron_tools
scoreboard objectives remove AD_Story_lava_bucket
scoreboard objectives remove AD_Story_mine_diamond
scoreboard objectives remove AD_Story_mine_stone
scoreboard objectives remove AD_Story_obtain_armor
scoreboard objectives remove AD_Story_root
scoreboard objectives remove AD_Story_shiny_gear
scoreboard objectives remove AD_Story_smelt_iron
scoreboard objectives remove AD_Story_upgrade_tools
#### advancements - potage00
scoreboard objectives remove AD_pg_root
scoreboard objectives remove AD_pg_minecart
scoreboard objectives remove AD_pg_kubikari
scoreboard objectives remove AD_pg_tsutenkaku
scoreboard objectives remove AD_pg_treasure
scoreboard objectives remove AD_pg_3litpigs
scoreboard objectives remove AD_pg_brk_spawn
scoreboard objectives remove AD_pg_near_bord
scoreboard objectives remove AD_pg_kill_phant
scoreboard objectives remove AD_pg_kill_ender
scoreboard objectives remove AD_pg_frinedship
scoreboard objectives remove BreakSpawner
#### advancements - achievements
scoreboard objectives remove AD_ac_root
scoreboard objectives remove AD_ac_buildsword
scoreboard objectives remove AD_ac_diamonds2u
scoreboard objectives remove AD_ac_fly_pig
scoreboard objectives remove AD_ac_kill_cow
scoreboard objectives remove AD_ac_on_a_rail
scoreboard objectives remove FallDistance
scoreboard objectives remove RailDistance
#### summons minecart
scoreboard objectives remove 300
scoreboard objectives remove SecondSummon
scoreboard objectives remove SecondEliminate
scoreboard objectives remove SummonInterval
scoreboard objectives remove SummonMinecart
scoreboard objectives remove GetMinecartCount
scoreboard objectives remove HasLootTable
#### transmitter
scoreboard objectives remove UseTransmitter
scoreboard objectives remove TransmitterPosX
scoreboard objectives remove TransmitterPosY
scoreboard objectives remove TransmitterPosZ
scoreboard objectives remove BannerDimension
scoreboard objectives remove BannerPosX
scoreboard objectives remove BannerPosY
scoreboard objectives remove BannerPosZ
scoreboard objectives remove SetRespawnBanner
scoreboard objectives remove TempBannerNum
#### emergency call
scoreboard objectives remove UseEmergencyCall
#### armor upgrader
scoreboard objectives remove UseArmorUpgrader
#### tool upgrader
scoreboard objectives remove UseToolUpgrader
#### notice of thief
scoreboard objectives remove UseNoticeOfThief
scoreboard objectives remove StealItemPlayer
scoreboard objectives remove ThiefTick
scoreboard objectives remove ThiefSecond
#### evoker fangs wand
scoreboard objectives remove UseFungusStick
scoreboard objectives remove EvokerFangsCount
#### respawn beacon
scoreboard objectives remove BeaconNumber
scoreboard objectives remove CompareNames
scoreboard objectives remove DetectTeamExists
#### mobile respawn beacon
scoreboard objectives remove MobileBeaconNum
scoreboard objectives remove MobileBeaconTmp
#### team
scoreboard objectives remove TeamMemberNotExist
scoreboard objectives remove DeadOwnTeam
scoreboard objectives remove NumOfTeamPlayer
#### result
scoreboard objectives remove ResultTmp
#### add-on
scoreboard objectives remove LoadAddon

## Reset players
scoreboard players reset @a
scoreboard players reset #mad