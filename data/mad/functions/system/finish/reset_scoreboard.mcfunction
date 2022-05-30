#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
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
scoreboard objectives remove Participant
scoreboard objectives remove NumParticipant
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
#### setting phase - common
scoreboard objectives remove ThrowItem
scoreboard objectives remove Select02
scoreboard objectives remove Select03
scoreboard objectives remove Select04
scoreboard objectives remove Select05
scoreboard objectives remove Select06
scoreboard objectives remove Select09
scoreboard objectives remove Select10
scoreboard objectives remove Select11
scoreboard objectives remove Select12
scoreboard objectives remove Select13
scoreboard objectives remove Select14
scoreboard objectives remove Select15
scoreboard objectives remove Select16
scoreboard objectives remove Select17
scoreboard objectives remove Select18
scoreboard objectives remove Select19
scoreboard objectives remove Select20
scoreboard objectives remove Select21
scoreboard objectives remove Select22
scoreboard objectives remove Select23
scoreboard objectives remove Select24
scoreboard objectives remove Select25
scoreboard objectives remove Select26
scoreboard objectives remove Select28
scoreboard objectives remove Select31
scoreboard objectives remove Select34
scoreboard objectives remove Selected
#### setting phase - choose time limit
scoreboard objectives remove 10
scoreboard objectives remove 100
scoreboard objectives remove 1000
scoreboard objectives remove 10000
scoreboard objectives remove digit_0001
scoreboard objectives remove digit_0010
scoreboard objectives remove digit_0100
scoreboard objectives remove digit_1000
scoreboard objectives remove TimeLimit
scoreboard objectives remove TimeLimitPrv
scoreboard objectives remove GetTimeLimit
#### setting phase - choose area
scoreboard objectives remove WorldBorder
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
scoreboard objectives remove WeatherCyclePrv
scoreboard objectives remove DaylightCyclePrv
#### setting phase - choose team setting
scoreboard objectives remove IsTeam
scoreboard objectives remove friendlyFire
scoreboard objectives remove collisionRule
scoreboard objectives remove VisibleName
scoreboard objectives remove VisibleInvis
scoreboard objectives remove VisibleDeath
scoreboard objectives remove SetTeamManual
scoreboard objectives remove TeamNumber
scoreboard objectives remove BeaconNumber
scoreboard objectives remove RespawnTime
scoreboard objectives remove friendlyFirePrv
scoreboard objectives remove collisionRulePrv
scoreboard objectives remove VisibleNamePrv
scoreboard objectives remove VisibleInvisPrv
scoreboard objectives remove VisibleDeathPrv
scoreboard objectives remove SetTeamManualPrv
scoreboard objectives remove TeamNumberPrv
scoreboard objectives remove BeaconNumberPrv
scoreboard objectives remove RespawnTimePrv
#### advancements
scoreboard objectives remove HasAdvancements
#### advancements - adventure
scoreboard objectives remove AD_ad_adven_time
scoreboard objectives remove AD_ad_arbalistic
scoreboard objectives remove AD_ad_bullseye
scoreboard objectives remove AD_ad_fallworld
scoreboard objectives remove AD_ad_hero_villa
scoreboard objectives remove AD_ad_honey_slid
scoreboard objectives remove AD_ad_kill_a_mob
scoreboard objectives remove AD_ad_kill_all
scoreboard objectives remove AD_ad_ol_betsy
scoreboard objectives remove AD_ad_jukemeadow
scoreboard objectives remove AD_ad_lightrod
scoreboard objectives remove AD_ad_root
scoreboard objectives remove AD_ad_shot_arrow
scoreboard objectives remove AD_ad_sleep
scoreboard objectives remove AD_ad_sniper
scoreboard objectives remove AD_ad_spy_dragon
scoreboard objectives remove AD_ad_spy_ghast
scoreboard objectives remove AD_ad_spy_parrot
scoreboard objectives remove AD_ad_iron_golem
scoreboard objectives remove AD_ad_trident
scoreboard objectives remove AD_ad_totem
scoreboard objectives remove AD_ad_tradehigh
scoreboard objectives remove AD_ad_trade
scoreboard objectives remove AD_ad_two_birds
scoreboard objectives remove AD_ad_very_very
scoreboard objectives remove AD_ad_voluntary
scoreboard objectives remove AD_ad_powdersnow
scoreboard objectives remove AD_ad_whos_pilla
#### advancements - minecraft
scoreboard objectives remove AD_mc_cure_zombi
scoreboard objectives remove AD_mc_deflect
scoreboard objectives remove AD_mc_enchant
scoreboard objectives remove AD_mc_enter_end
scoreboard objectives remove AD_mc_enter_hell
scoreboard objectives remove AD_mc_ender_eye
scoreboard objectives remove AD_mc_obsidian
scoreboard objectives remove AD_mc_iron_tools
scoreboard objectives remove AD_mc_lava_bucke
scoreboard objectives remove AD_mc_mine_dia
scoreboard objectives remove AD_mc_mine_stone
scoreboard objectives remove AD_mc_armor
scoreboard objectives remove AD_mc_root
scoreboard objectives remove AD_mc_shiny_gear
scoreboard objectives remove AD_mc_smelt_iron
scoreboard objectives remove AD_mc_upgrade
#### advancements - nether
scoreboard objectives remove AD_nt_all_effect
scoreboard objectives remove AD_nt_all_potion
scoreboard objectives remove AD_nt_brew_potio
scoreboard objectives remove AD_nt_respawn
scoreboard objectives remove AD_nt_create_bc
scoreboard objectives remove AD_nt_create_fbc
scoreboard objectives remove AD_nt_distract
scoreboard objectives remove AD_nt_explore
scoreboard objectives remove AD_nt_fast_travl
scoreboard objectives remove AD_nt_bastion
scoreboard objectives remove AD_nt_fortress
scoreboard objectives remove AD_nt_get_wtskul
scoreboard objectives remove AD_nt_loot_bastn
scoreboard objectives remove AD_nt_ntrt_armor
scoreboard objectives remove AD_nt_ancient_db
scoreboard objectives remove AD_nt_blaze_rod
scoreboard objectives remove AD_nt_cry_obsidn
scoreboard objectives remove AD_nt_rtrn_ghast
scoreboard objectives remove AD_nt_strider_ow
scoreboard objectives remove AD_nt_strider
scoreboard objectives remove AD_nt_root
scoreboard objectives remove AD_nt_smn_wither
scoreboard objectives remove AD_nt_uneasy_alc
scoreboard objectives remove AD_nt_lodestone
#### advancements - end
scoreboard objectives remove AD_ed_drg_breath
scoreboard objectives remove AD_ed_dragon_egg
scoreboard objectives remove AD_ed_elytra
scoreboard objectives remove AD_ed_end_gate
scoreboard objectives remove AD_ed_end_city
scoreboard objectives remove AD_ed_kill_dragn
scoreboard objectives remove AD_ed_levitate
scoreboard objectives remove AD_ed_resp_dragn
scoreboard objectives remove AD_ed_root
#### advancements - husbandry
scoreboard objectives remove AD_hb_axolotl
scoreboard objectives remove AD_hb_balanced
scoreboard objectives remove AD_hb_bred_all
scoreboard objectives remove AD_hb_bred_anima
scoreboard objectives remove AD_hb_catalogue
scoreboard objectives remove AD_hb_fishy
scoreboard objectives remove AD_hb_axo_target
scoreboard objectives remove AD_hb_glow_sign
scoreboard objectives remove AD_hb_nether_hoe
scoreboard objectives remove AD_hb_plant_seed
scoreboard objectives remove AD_hb_goat_boat
scoreboard objectives remove AD_hb_root
scoreboard objectives remove AD_hb_harv_honey
scoreboard objectives remove AD_hb_silk_nest
scoreboard objectives remove AD_hb_tacti_fish
scoreboard objectives remove AD_hb_tame_anima
scoreboard objectives remove AD_hb_wax_off
scoreboard objectives remove AD_hb_wax_on
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
scoreboard objectives remove MinecartBranch
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
#### mobile respawn beacon
scoreboard objectives remove MobileBeaconNum
scoreboard objectives remove MobileBeaconTmp
#### team
scoreboard objectives remove TeamBoolean
scoreboard objectives remove DeadOwnTeam
scoreboard objectives remove DeadTeamA
scoreboard objectives remove DeadTeamB
scoreboard objectives remove DeadTeamC
scoreboard objectives remove DeadTeamD
scoreboard objectives remove DeadTeamE
scoreboard objectives remove NumOfTeamPlayer
#### result
scoreboard objectives remove ResultTmp
#### add-on
scoreboard objectives remove LoadAddon

## Remove players
scoreboard players reset @a
scoreboard players reset #mad