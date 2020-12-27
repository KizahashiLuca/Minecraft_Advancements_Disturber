#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Add scoreboards for game phase
scoreboard objectives add Phase dummy
scoreboard objectives add Death minecraft.custom:minecraft.deaths
scoreboard objectives add SpawnTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add Kill dummy
scoreboard objectives add KillTemp minecraft.custom:minecraft.player_kills
scoreboard objectives add TeleportMessage trigger
scoreboard objectives add ExitMessage trigger
## Add scoreboards for timer
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
scoreboard objectives add GeneralSecond dummy
scoreboard objectives add GeneralTick dummy
scoreboard objectives add SecondPerSurvive dummy
## Add scoreboards for participants
scoreboard objectives add Participant dummy
scoreboard objectives add NumParticipant dummy
scoreboard objectives add NumAlive dummy
scoreboard objectives add NumDead dummy
## Add scoreboards for onground
scoreboard objectives add OnGround dummy
## Add scoreboards for area
scoreboard objectives add 100 dummy
scoreboard objectives add OriginX dummy
scoreboard objectives add OriginY dummy
scoreboard objectives add OriginZ dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add SummonPosition dummy
## Add scoreboards for randomizer
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
## Add scoreboards for setting phase - common
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
## Add scoreboards for setting phase - choose time limit
scoreboard objectives add TimeLimit dummy
scoreboard objectives add TimeLimitPrv dummy
scoreboard objectives add GetTimeLimit dummy
## Add scoreboards for setting phase - choose area
scoreboard objectives add WorldBorder dummy
scoreboard objectives add WorldBorderPrv dummy
## Add scoreboards for setting phase - choose difficulty
scoreboard objectives add Difficulty dummy
scoreboard objectives add DifficultyPrv dummy
## Add scoreboards for setting phase - choose adding time
scoreboard objectives add AddingTime dummy
scoreboard objectives add AddingTimePrv dummy
## Add scoreboards for setting phase - choose gamerule
scoreboard objectives add WeatherCycle dummy
scoreboard objectives add DaylightCycle dummy
scoreboard objectives add WeatherCyclePrv dummy
scoreboard objectives add DaylightCyclePrv dummy
## Add scoreboards for setting phase - choose team setting
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
## Add scoreboards for advancements
scoreboard objectives add HasAdvancements dummy
## Add scoreboards for advancements - adventure
scoreboard objectives add AD_ad_adven_time dummy {"text":"冒険の時間"}
scoreboard objectives add AD_ad_arbalistic dummy {"text":"クロスボウの達人"}
scoreboard objectives add AD_ad_bullseye dummy {"text":"的中"}
scoreboard objectives add AD_ad_hero_villa dummy {"text":"村の英雄"}
scoreboard objectives add AD_ad_honey_slid dummy {"text":"べとべとな状況"}
scoreboard objectives add AD_ad_kill_a_mob dummy {"text":"モンスターハンター"}
scoreboard objectives add AD_ad_kill_all dummy {"text":"モンスター狩りの達人"}
scoreboard objectives add AD_ad_ol_betsy dummy {"text":"おてんば"}
scoreboard objectives add AD_ad_root dummy {"text":"冒険"}
scoreboard objectives add AD_ad_shot_arrow dummy {"text":"狙いを定めて"}
scoreboard objectives add AD_ad_sleep dummy {"text":"良い夢見てね"}
scoreboard objectives add AD_ad_sniper dummy {"text":"スナイパー対決"}
scoreboard objectives add AD_ad_iron_golem dummy {"text":"お手伝いさん"}
scoreboard objectives add AD_ad_trident dummy {"text":"もったいぶった一言"}
scoreboard objectives add AD_ad_totem dummy {"text":"死を超えて"}
scoreboard objectives add AD_ad_trade dummy {"text":"良い取引だ！"}
scoreboard objectives add AD_ad_two_birds dummy {"text":"一石二鳥"}
scoreboard objectives add AD_ad_very_very dummy {"text":"とてもとても恐ろしい"}
scoreboard objectives add AD_ad_voluntary dummy {"text":"自主的な亡命"}
scoreboard objectives add AD_ad_whos_pilla dummy {"text":"どっちが略奪者？"}
## Add scoreboards for advancements - minecraft
scoreboard objectives add AD_mc_cure_zombi dummy {"text":"ゾンビドクター"}
scoreboard objectives add AD_mc_deflect dummy {"text":"今日はやめておきます"}
scoreboard objectives add AD_mc_enchant dummy {"text":"エンチャントの使い手"}
scoreboard objectives add AD_mc_enter_end dummy {"text":"おしまい？"}
scoreboard objectives add AD_mc_enter_hell dummy {"text":"さらなる深みへ"}
scoreboard objectives add AD_mc_ender_eye dummy {"text":"アイ・スパイ"}
scoreboard objectives add AD_mc_obsidian dummy {"text":"アイス・バケツ・チャレンジ"}
scoreboard objectives add AD_mc_iron_tools dummy {"text":"鉄のツルハシで決まり"}
scoreboard objectives add AD_mc_lava_bucke dummy {"text":"ホットスタッフ"}
scoreboard objectives add AD_mc_mine_dia dummy {"text":"ダイヤモンド!"}
scoreboard objectives add AD_mc_mine_stone dummy {"text":"石器時代"}
scoreboard objectives add AD_mc_armor dummy {"text":"装備せよ"}
scoreboard objectives add AD_mc_root dummy {"text":"Minecraft"}
scoreboard objectives add AD_mc_shiny_gear dummy {"text":"ダイヤモンドで私を覆って"}
scoreboard objectives add AD_mc_smelt_iron dummy {"text":"金属を手に入れる"}
scoreboard objectives add AD_mc_upgrade dummy {"text":"アップグレード"}
## Add scoreboards for advancements - nether
scoreboard objectives add AD_nt_all_effect dummy {"text":"どうやってここまで？"}
scoreboard objectives add AD_nt_all_potion dummy {"text":"猛烈なカクテル"}
scoreboard objectives add AD_nt_brew_potio dummy {"text":"町のお薬屋さん"}
scoreboard objectives add AD_nt_respawn dummy {"text":"不死身とまではいかない"}
scoreboard objectives add AD_nt_create_bc dummy {"text":"生活のビーコン"}
scoreboard objectives add AD_nt_create_fbc dummy {"text":"ビーコネーター"}
scoreboard objectives add AD_nt_distract dummy {"text":"わーいぴかぴか！"}
scoreboard objectives add AD_nt_explore dummy {"text":"ホットな観光地"}
scoreboard objectives add AD_nt_fast_travl dummy {"text":"亜空間バブル"}
scoreboard objectives add AD_nt_bastion dummy {"text":"兵どもが夢の跡"}
scoreboard objectives add AD_nt_fortress dummy {"text":"恐ろしい要塞"}
scoreboard objectives add AD_nt_get_wtskul dummy {"text":"不気味で怖いスケルトン"}
scoreboard objectives add AD_nt_loot_bastn dummy {"text":"ブタ戦争"}
scoreboard objectives add AD_nt_ntrt_armor dummy {"text":"残骸で私を覆って"}
scoreboard objectives add AD_nt_ancient_db dummy {"text":"深淵に隠されしもの"}
scoreboard objectives add AD_nt_blaze_rod dummy {"text":"炎の中へ"}
scoreboard objectives add AD_nt_cry_obsidn dummy {"text":"玉ねぎを切っているのは誰？"}
scoreboard objectives add AD_nt_rtrn_ghast dummy {"text":"差出人に返送"}
scoreboard objectives add AD_nt_strider dummy {"text":"足の生えたボート"}
scoreboard objectives add AD_nt_root dummy {"text":"ネザー"}
scoreboard objectives add AD_nt_smn_wither dummy {"text":"荒が丘"}
scoreboard objectives add AD_nt_uneasy_alc dummy {"text":"不安な同盟"}
scoreboard objectives add AD_nt_lodestone dummy {"text":"この道をずっとゆけば"}
## Add scoreboards for advancements - end
scoreboard objectives add AD_ed_drg_breath dummy {"text":"口臭に気をつけよう"}
scoreboard objectives add AD_ed_dragon_egg dummy {"text":"ザ・ネクストジェネレーション"}
scoreboard objectives add AD_ed_elytra dummy {"text":"空はどこまでも高く"}
scoreboard objectives add AD_ed_end_gate dummy {"text":"遠方への逃走"}
scoreboard objectives add AD_ed_end_city dummy {"text":"ゲームの果ての都市"}
scoreboard objectives add AD_ed_kill_dragn dummy {"text":"エンドの解放"}
scoreboard objectives add AD_ed_levitate dummy {"text":"ここからの素晴らしい眺め"}
scoreboard objectives add AD_ed_resp_dragn dummy {"text":"おしまい…再び…"}
scoreboard objectives add AD_ed_root dummy {"text":"ジ・エンド"}
## Add scoreboards for advancements - husbandry
scoreboard objectives add AD_hb_balanced dummy {"text":"バランスの取れた食事"}
scoreboard objectives add AD_hb_bred_all dummy {"text":"二匹ずつ"}
scoreboard objectives add AD_hb_bred_anima dummy {"text":"コウノトリの贈り物"}
scoreboard objectives add AD_hb_catalogue dummy {"text":"猫大全集"}
scoreboard objectives add AD_hb_fishy dummy {"text":"生臭い仕事"}
scoreboard objectives add AD_hb_nether_hoe dummy {"text":"真面目な献身"}
scoreboard objectives add AD_hb_plant_seed dummy {"text":"種だらけの場所"}
scoreboard objectives add AD_hb_root dummy {"text":"農業"}
scoreboard objectives add AD_hb_harv_honey dummy {"text":"大切なお客様"}
scoreboard objectives add AD_hb_silk_nest dummy {"text":"完全な引越し"}
scoreboard objectives add AD_hb_tacti_fish dummy {"text":"戦術的漁業"}
scoreboard objectives add AD_hb_tame_anima dummy {"text":"永遠の親友となるだろう"}
## Add scoreboards for advancements - potage00
scoreboard objectives add AD_pg_root dummy {"text":"MAD"}
scoreboard objectives add AD_pg_minecart dummy {"text":"支援物資だ!"}
scoreboard objectives add AD_pg_kubikari dummy {"text":"首狩りぽたーじゅ"}
scoreboard objectives add AD_pg_tsutenkaku dummy {"text":"通天閣からの眺め"}
scoreboard objectives add AD_pg_treasure dummy {"text":"宝探し"}
scoreboard objectives add AD_pg_3litpigs dummy {"text":"3匹の子豚"}
scoreboard objectives add AD_pg_brk_spawn dummy {"text":"君子危うきに近寄らず"}
scoreboard objectives add AD_pg_near_bord dummy {"text":"この世界の片隅に"}
scoreboard objectives add AD_pg_kill_phant dummy {"text":"NO BED NO LIFE"}
scoreboard objectives add AD_pg_kill_ender dummy {"text":"消える暗闇"}
scoreboard objectives add AD_pg_frinedship dummy {"text":"仲間思い"}
scoreboard objectives add BreakSpawner minecraft.mined:minecraft.spawner
## Add scoreboards for summons minecart
scoreboard objectives add 300 dummy
scoreboard objectives add SecondSummon dummy
scoreboard objectives add SecondEliminate dummy
scoreboard objectives add SummonInterval dummy
scoreboard objectives add SummonMinecart dummy
## Add scoreboards for transmitter
scoreboard objectives add UseTransmitter trigger
scoreboard objectives add TransmitterPosX dummy
scoreboard objectives add TransmitterPosY dummy
scoreboard objectives add TransmitterPosZ dummy
## Add scoreboards for emergency call
scoreboard objectives add UseEmergencyCall minecraft.used:minecraft.zombie_horse_spawn_egg
## Add scoreboards for upgrader
scoreboard objectives add UseUpgrader minecraft.used:minecraft.bat_spawn_egg
## Add scoreboards for respawn beacon
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
## Add scoreboards for mobile respawn beacon
scoreboard objectives add MobileBeaconNum dummy
## Add scoreboards for team
scoreboard objectives add TeamBoolean dummy
scoreboard objectives add DeadTeamA dummy
scoreboard objectives add DeadTeamB dummy
scoreboard objectives add DeadTeamC dummy
scoreboard objectives add DeadTeamD dummy
scoreboard objectives add DeadTeamE dummy
scoreboard objectives add NumOfTeamPlayer dummy

## Set scoreboards for game phase
scoreboard players set #mad Phase 0
scoreboard players set #mad Difficulty 0
scoreboard players set #mad ExitMessage 0
## Set scoreboards for participants
scoreboard players set #mad Participant 0
scoreboard players set #mad NumParticipant 0
scoreboard players set #mad NumAlive 0
scoreboard players set #mad NumDead 0
## Set scoreboards for area
scoreboard players set #mad 100 100
scoreboard players set #mad OriginX 0
scoreboard players set #mad OriginY 63
scoreboard players set #mad OriginZ 0
scoreboard players set #mad PosX 0
scoreboard players set #mad PosY 63
scoreboard players set #mad PosZ 0
scoreboard players set #mad SummonPosition 0
## Set scoreboards for randomizer
scoreboard players set #mad RandomSeed 0
scoreboard players set #mad RandomCount 10
scoreboard players set #mad RandomAnswer 0
scoreboard players set #mad RandomModder 2147483647
scoreboard players set #mad RandomMultiplier 48271
## Set scoreboards for setting phase - choose time limit
scoreboard players set #mad TimeLimit 100
scoreboard players set #mad TimeLimitPrv 100
## Set scoreboards for setting phase - choose area
scoreboard players set #mad WorldBorder 1000
scoreboard players set #mad WorldBorderPrv 1000
## Set scoreboards for setting phase - choose difficulty
scoreboard players set #mad Difficulty 2
scoreboard players set #mad DifficultyPrv 2
## Set scoreboards for setting phase - choose adding time
scoreboard players set #mad AddingTime 100
scoreboard players set #mad AddingTimePrv 100
## Set scoreboards for setting phase - choose gamerule
scoreboard players set #mad WeatherCycle 1
scoreboard players set #mad DaylightCycle 1
scoreboard players set #mad WeatherCyclePrv 1
scoreboard players set #mad DaylightCyclePrv 1
## Set scoreboards for setting phase - choose team setting
scoreboard players set #mad IsTeam 0
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad VisibleName 0
scoreboard players set #mad VisibleInvis 0
scoreboard players set #mad VisibleDeath 0
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad TeamNumber 2
scoreboard players set #mad BeaconNumber 1
scoreboard players set #mad RespawnTime 300
scoreboard players set #mad friendlyFirePrv 1
scoreboard players set #mad collisionRulePrv 1
scoreboard players set #mad VisibleNamePrv 0
scoreboard players set #mad VisibleInvisPrv 0
scoreboard players set #mad VisibleDeathPrv 0
scoreboard players set #mad SetTeamManualPrv 0
scoreboard players set #mad TeamNumberPrv 2
scoreboard players set #mad BeaconNumberPrv 1
scoreboard players set #mad RespawnTimePrv 300
## Set scoreboards for summons minecart
scoreboard players set #mad 300 300
scoreboard players set #mad SecondSummon 100
scoreboard players set #mad SecondEliminate 0
scoreboard players set #mad SummonInterval 20
scoreboard players set #mad SummonMinecart 0
## Set scoreboards for team
scoreboard players set #mad TeamBoolean 0
scoreboard players set #mad DeadTeamA 0
scoreboard players set #mad DeadTeamB 0
scoreboard players set #mad DeadTeamC 0
scoreboard players set #mad DeadTeamD 0
scoreboard players set #mad DeadTeamE 0
## Set scoreboards for mobile respawn beacon
scoreboard players set #mad MobileBeaconNum 1

## Set scoreboards for game phase
scoreboard players set @a Phase 0
scoreboard players set @a Death 0
scoreboard players set @a SpawnTime 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMessage 0
scoreboard players enable @a TeleportMessage
scoreboard players set @a ExitMessage 0
scoreboard players enable @a ExitMessage
## Set scoreboards for timer
scoreboard players set @a Second 0
scoreboard players set @a Tick 0
scoreboard players set @a GeneralSecond 0
scoreboard players set @a GeneralTick 0
scoreboard players set @a SecondPerSurvive 0
## Set scoreboards for participants
scoreboard players set @a Participant 0
scoreboard players set @a NumParticipant 0
scoreboard players set @a NumAlive 0
scoreboard players set @a NumDead 0
## Set scoreboards for onground
scoreboard players set @a OnGround 0
## Set scoreboards for area
scoreboard players set @a SummonPosition 0
## Set scoreboards for setting phase - common
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
## Add scoreboards for setting phase - choose time limit
scoreboard players set @a GetTimeLimit 0
## Set scoreboards for advancements
scoreboard players set @a HasAdvancements 0
## Set scoreboards for advancements - adventure
scoreboard players set @a AD_ad_adven_time 0
scoreboard players set @a AD_ad_arbalistic 0
scoreboard players set @a AD_ad_bullseye 0
scoreboard players set @a AD_ad_hero_villa 0
scoreboard players set @a AD_ad_honey_slid 0
scoreboard players set @a AD_ad_kill_a_mob 0
scoreboard players set @a AD_ad_kill_all 0
scoreboard players set @a AD_ad_ol_betsy 0
scoreboard players set @a AD_ad_root 0
scoreboard players set @a AD_ad_shot_arrow 0
scoreboard players set @a AD_ad_sleep 0
scoreboard players set @a AD_ad_sniper 0
scoreboard players set @a AD_ad_iron_golem 0
scoreboard players set @a AD_ad_trident 0
scoreboard players set @a AD_ad_totem 0
scoreboard players set @a AD_ad_trade 0
scoreboard players set @a AD_ad_two_birds 0
scoreboard players set @a AD_ad_very_very 0
scoreboard players set @a AD_ad_voluntary 0
scoreboard players set @a AD_ad_whos_pilla 0
## Set scoreboards for advancements - minecraft
scoreboard players set @a AD_mc_cure_zombi 0
scoreboard players set @a AD_mc_deflect 0
scoreboard players set @a AD_mc_enchant 0
scoreboard players set @a AD_mc_enter_end 0
scoreboard players set @a AD_mc_enter_hell 0
scoreboard players set @a AD_mc_ender_eye 0
scoreboard players set @a AD_mc_obsidian 0
scoreboard players set @a AD_mc_iron_tools 0
scoreboard players set @a AD_mc_lava_bucke 0
scoreboard players set @a AD_mc_mine_dia 0
scoreboard players set @a AD_mc_mine_stone 0
scoreboard players set @a AD_mc_armor 0
scoreboard players set @a AD_mc_root 0
scoreboard players set @a AD_mc_shiny_gear 0
scoreboard players set @a AD_mc_smelt_iron 0
scoreboard players set @a AD_mc_upgrade 0
## Set scoreboards for advancements - nether
scoreboard players set @a AD_nt_all_effect 0
scoreboard players set @a AD_nt_all_potion 0
scoreboard players set @a AD_nt_brew_potio 0
scoreboard players set @a AD_nt_respawn 0
scoreboard players set @a AD_nt_create_bc 0
scoreboard players set @a AD_nt_create_fbc 0
scoreboard players set @a AD_nt_distract 0
scoreboard players set @a AD_nt_explore 0
scoreboard players set @a AD_nt_fast_travl 0
scoreboard players set @a AD_nt_bastion 0
scoreboard players set @a AD_nt_fortress 0
scoreboard players set @a AD_nt_get_wtskul 0
scoreboard players set @a AD_nt_loot_bastn 0
scoreboard players set @a AD_nt_ntrt_armor 0
scoreboard players set @a AD_nt_ancient_db 0
scoreboard players set @a AD_nt_blaze_rod 0
scoreboard players set @a AD_nt_cry_obsidn 0
scoreboard players set @a AD_nt_rtrn_ghast 0
scoreboard players set @a AD_nt_strider 0
scoreboard players set @a AD_nt_root 0
scoreboard players set @a AD_nt_smn_wither 0
scoreboard players set @a AD_nt_uneasy_alc 0
scoreboard players set @a AD_nt_lodestone 0
## Set scoreboards for advancements - end
scoreboard players set @a AD_ed_drg_breath 0
scoreboard players set @a AD_ed_dragon_egg 0
scoreboard players set @a AD_ed_elytra 0
scoreboard players set @a AD_ed_end_gate 0
scoreboard players set @a AD_ed_end_city 0
scoreboard players set @a AD_ed_kill_dragn 0
scoreboard players set @a AD_ed_levitate 0
scoreboard players set @a AD_ed_resp_dragn 0
scoreboard players set @a AD_ed_root 0
## Set scoreboards for advancements - husbandry
scoreboard players set @a AD_hb_balanced 0
scoreboard players set @a AD_hb_bred_all 0
scoreboard players set @a AD_hb_bred_anima 0
scoreboard players set @a AD_hb_catalogue 0
scoreboard players set @a AD_hb_fishy 0
scoreboard players set @a AD_hb_nether_hoe 0
scoreboard players set @a AD_hb_plant_seed 0
scoreboard players set @a AD_hb_root 0
scoreboard players set @a AD_hb_harv_honey 0
scoreboard players set @a AD_hb_silk_nest 0
scoreboard players set @a AD_hb_tacti_fish 0
scoreboard players set @a AD_hb_tame_anima 0
## Set scoreboards for advancements - potage00
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
## Set scoreboards for transmitter
scoreboard players set @a UseTransmitter 0
scoreboard players enable @a UseTransmitter
scoreboard players set @a TransmitterPosX 0
scoreboard players set @a TransmitterPosY 0
scoreboard players set @a TransmitterPosZ 0
## Set scoreboards for emergency call
scoreboard players set @a UseEmergencyCall 0
## Set scoreboards for upgrader
scoreboard players set @a UseUpgrader 0
## Set scoreboards for mobile respawn beacon
scoreboard players set @a MobileBeaconNum 0
## Set scoreboards for team
scoreboard players set @a NumOfTeamPlayer 0

## Random
function mad:system/random_generator/initialize