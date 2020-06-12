#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Remove scoreboards for game phase
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove Death
scoreboard objectives remove SpawnTime
scoreboard objectives remove Kill
scoreboard objectives remove KillTemp
scoreboard objectives remove ExitMessage
## Remove scoreboards for timer
scoreboard objectives remove Second
scoreboard objectives remove Tick
## Remove scoreboards for participants
scoreboard objectives remove Participant
scoreboard objectives remove NumParticipant
scoreboard objectives remove NumAlive
## Remove scoreboards for onground
scoreboard objectives remove OnGround
## Remove scoreboards for area
scoreboard objectives remove 2
scoreboard objectives remove PlusMinus
scoreboard objectives remove 1_meter
scoreboard objectives remove 10_meter
scoreboard objectives remove 100_meter
scoreboard objectives remove 1000_meter
scoreboard objectives remove OriginX
scoreboard objectives remove OriginY
scoreboard objectives remove OriginZ
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove SummonPosition
## Remove scoreboards for randomizer
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
## Remove scoreboards for setting phase - common
scoreboard objectives remove ThrowItem
scoreboard objectives remove Select02
scoreboard objectives remove Select04
scoreboard objectives remove Select06
scoreboard objectives remove Select11
scoreboard objectives remove Select12
scoreboard objectives remove Select13
scoreboard objectives remove Select14
scoreboard objectives remove Select15
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
scoreboard objectives remove Select34
scoreboard objectives remove Selected
## Remove scoreboards for setting phase - choose time limit
scoreboard objectives remove TimeLimit
scoreboard objectives remove TimeLimitPrv
## Remove scoreboards for setting phase - choose area
scoreboard objectives remove WorldBorder
scoreboard objectives remove WorldBorderPrv
## Remove scoreboards for setting phase - choose difficulty
scoreboard objectives remove Difficulty
scoreboard objectives remove DifficultyPrv
## Remove scoreboards for advancements
scoreboard objectives remove HasAdvancements
## Remove scoreboards for advancements - adventure
scoreboard objectives remove AD_ad_adven_time
scoreboard objectives remove AD_ad_arbalistic
scoreboard objectives remove AD_ad_hero_villa
scoreboard objectives remove AD_ad_honey_slid
scoreboard objectives remove AD_ad_kill_a_mob
scoreboard objectives remove AD_ad_kill_all
scoreboard objectives remove AD_ad_ol_betsy
scoreboard objectives remove AD_ad_root
scoreboard objectives remove AD_ad_shot_arrow
scoreboard objectives remove AD_ad_sleep
scoreboard objectives remove AD_ad_sniper
scoreboard objectives remove AD_ad_iron_golem
scoreboard objectives remove AD_ad_trident
scoreboard objectives remove AD_ad_totem
scoreboard objectives remove AD_ad_trade
scoreboard objectives remove AD_ad_two_birds
scoreboard objectives remove AD_ad_very_very
scoreboard objectives remove AD_ad_voluntary
scoreboard objectives remove AD_ad_whos_pilla
## Remove scoreboards for advancements - minecraft
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
## Remove scoreboards for advancements - nether
scoreboard objectives remove AD_nt_all_effect
scoreboard objectives remove AD_nt_all_potion
scoreboard objectives remove AD_nt_brew_potio
scoreboard objectives remove AD_nt_create_bc
scoreboard objectives remove AD_nt_create_fbc
scoreboard objectives remove AD_nt_fast_travl
scoreboard objectives remove AD_nt_fortress
scoreboard objectives remove AD_nt_get_wtskul
scoreboard objectives remove AD_nt_blaze_rod
scoreboard objectives remove AD_nt_rtrn_ghast
scoreboard objectives remove AD_nt_root
scoreboard objectives remove AD_nt_smn_wither
scoreboard objectives remove AD_nt_uneasy_alc
## Remove scoreboards for advancements - end
scoreboard objectives remove AD_ed_drg_breath
scoreboard objectives remove AD_ed_dragon_egg
scoreboard objectives remove AD_ed_elytra
scoreboard objectives remove AD_ed_end_gate
scoreboard objectives remove AD_ed_end_city
scoreboard objectives remove AD_ed_kill_dragn
scoreboard objectives remove AD_ed_legitate
scoreboard objectives remove AD_ed_resp_dragn
scoreboard objectives remove AD_ed_root
## Remove scoreboards for advancements - husbandry
scoreboard objectives remove AD_hb_balanced
scoreboard objectives remove AD_hb_break_hoe
scoreboard objectives remove AD_hb_bred_all
scoreboard objectives remove AD_hb_bred_anima
scoreboard objectives remove AD_hb_catalogue
scoreboard objectives remove AD_hb_fishy
scoreboard objectives remove AD_hb_plant_seed
scoreboard objectives remove AD_hb_root
scoreboard objectives remove AD_hb_harv_honey
scoreboard objectives remove AD_hb_silk_nest
scoreboard objectives remove AD_hb_tacti_fish
scoreboard objectives remove AD_hb_tame_anima
## Remove scoreboards for advancements - potage00
scoreboard objectives remove AD_pg_root
scoreboard objectives remove AD_pg_tsutenkaku
scoreboard objectives remove AD_pg_treasure
scoreboard objectives remove AD_pg_treasure_t
scoreboard objectives remove AD_pg_treasure_e
scoreboard objectives remove AD_pg_treasure_d
scoreboard objectives remove AD_pg_treasure_g
scoreboard objectives remove AD_pg_treasure_i
scoreboard objectives remove AD_pg_treasure_r
scoreboard objectives remove AD_pg_treasure_l
scoreboard objectives remove AD_pg_treasure_q
## Remove scoreboards for summons minecart
scoreboard objectives remove 300
scoreboard objectives remove SecondSummon
scoreboard objectives remove SecondEliminate

## Remove players
scoreboard players reset @a
scoreboard players reset #mad