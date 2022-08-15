#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboards
#### timer
scoreboard players set #mad Tick 0
scoreboard players set #mad Second 0

#### game phase
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
execute if predicate mad:gamerules/match_mode/individual run scoreboard players operation @a TimeLimit = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players operation #mad_team_a TimeLimit = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players operation #mad_team_b TimeLimit = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players operation #mad_team_c TimeLimit = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players operation #mad_team_d TimeLimit = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players operation #mad_team_e TimeLimit = #mad TimeLimit
execute if predicate mad:gamerules/match_mode/individual run scoreboard players operation @a Second = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players operation #mad_team_a Second = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players operation #mad_team_b Second = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players operation #mad_team_c Second = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players operation #mad_team_d Second = #mad TimeLimit
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players operation #mad_team_e Second = #mad TimeLimit
execute if predicate mad:gamerules/match_mode/individual run scoreboard players set @a Tick 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a Tick 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b Tick 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c Tick 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d Tick 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e Tick 0
scoreboard players set @a GeneralSecond 0
scoreboard players set #mad GeneralSecond 0
scoreboard players set #mad GeneralTick 0
#### participants
scoreboard players set @a NumOfParticipants 0
scoreboard players set @a NumAlive 0
scoreboard players set #mad NumDead 0
scoreboard players set @a NumDead 0
#### onground
scoreboard players set @a OnGround 0
#### time limit
scoreboard players set @a GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e GetTimeLimit 0
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
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e GetMinecartCount 0
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
scoreboard players set @a ThiefTick 0
scoreboard players set @a ThiefSecond 5
scoreboard players set #mad ThiefSecond 5
scoreboard players set @a StealResult 0
#### evoker fangs wand
scoreboard players set @a UseFungusStick 0
#### mobile respawn beacon
scoreboard players set @a MobileBeaconNumber 0
#### team
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e NumOfTeamPlayer 0
#### result
scoreboard players set @a ResultTmp 0