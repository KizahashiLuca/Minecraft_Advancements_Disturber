#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Add scoreboards for game phase
scoreboard objectives add Version dummy
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
## Add scoreboards for participants
scoreboard objectives add Participant dummy
scoreboard objectives add NumParticipant dummy
scoreboard objectives add NumAlive dummy
## Add scoreboards for onground
scoreboard objectives add OnGround dummy
## Add scoreboards for area
scoreboard objectives add 2 dummy
scoreboard objectives add PlusMinus dummy
scoreboard objectives add 1_meter dummy
scoreboard objectives add 10_meter dummy
scoreboard objectives add 100_meter dummy
scoreboard objectives add 1000_meter dummy
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
scoreboard objectives add Select04 dummy
scoreboard objectives add Select06 dummy
scoreboard objectives add Select11 dummy
scoreboard objectives add Select12 dummy
scoreboard objectives add Select13 dummy
scoreboard objectives add Select14 dummy
scoreboard objectives add Select15 dummy
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
scoreboard objectives add Select34 dummy
scoreboard objectives add Selected dummy
## Add scoreboards for setting phase - choose time limit
scoreboard objectives add TimeLimit dummy
scoreboard objectives add TimeLimitPrv dummy
## Add scoreboards for setting phase - choose area
scoreboard objectives add WorldBorder dummy
scoreboard objectives add WorldBorderPrv dummy
## Add scoreboards for setting phase - choose difficulty
scoreboard objectives add Difficulty dummy
scoreboard objectives add DifficultyPrv dummy
## Add scoreboards for advancements
scoreboard objectives add HasAdvancements dummy
## Add scoreboards for advancements - adventure
scoreboard objectives add AD_ad_adven_time dummy {"text":"冒険の時間"}
scoreboard objectives add AD_ad_arbalistic dummy {"text":"クロスボウの達人"}
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
scoreboard objectives add AD_nt_create_bc dummy {"text":"生活のビーコン"}
scoreboard objectives add AD_nt_create_fbc dummy {"text":"ビーコネーター"}
scoreboard objectives add AD_nt_fast_travl dummy {"text":"亜空間バブル"}
scoreboard objectives add AD_nt_fortress dummy {"text":"恐ろしい要塞"}
scoreboard objectives add AD_nt_get_wtskul dummy {"text":"不気味で怖いスケルトン"}
scoreboard objectives add AD_nt_blaze_rod dummy {"text":"炎の中へ"}
scoreboard objectives add AD_nt_rtrn_ghast dummy {"text":"差出人に返送"}
scoreboard objectives add AD_nt_root dummy {"text":"ネザー"}
scoreboard objectives add AD_nt_smn_wither dummy {"text":"荒が丘"}
scoreboard objectives add AD_nt_uneasy_alc dummy {"text":"不安な同盟"}
## Add scoreboards for advancements - end
scoreboard objectives add AD_ed_drg_breath dummy {"text":"口臭に気をつけよう"}
scoreboard objectives add AD_ed_dragon_egg dummy {"text":"ザ・ネクストジェネレーション"}
scoreboard objectives add AD_ed_elytra dummy {"text":"空はどこまでも高く"}
scoreboard objectives add AD_ed_end_gate dummy {"text":"遠方への逃走"}
scoreboard objectives add AD_ed_end_city dummy {"text":"ゲームの果ての都市"}
scoreboard objectives add AD_ed_kill_dragn dummy {"text":"エンドの解放"}
scoreboard objectives add AD_ed_legitate dummy {"text":"ここからの素晴らしい眺め"}
scoreboard objectives add AD_ed_resp_dragn dummy {"text":"おしまい…再び…"}
scoreboard objectives add AD_ed_root dummy {"text":"ジ・エンド"}
## Add scoreboards for advancements - husbandry
scoreboard objectives add AD_hb_balanced dummy {"text":"バランスの取れた食事"}
scoreboard objectives add AD_hb_break_hoe dummy {"text":"真面目な献身"}
scoreboard objectives add AD_hb_bred_all dummy {"text":"二匹ずつ"}
scoreboard objectives add AD_hb_bred_anima dummy {"text":"コウノトリの贈り物"}
scoreboard objectives add AD_hb_catalogue dummy {"text":"猫大全集"}
scoreboard objectives add AD_hb_fishy dummy {"text":"生臭い仕事"}
scoreboard objectives add AD_hb_plant_seed dummy {"text":"種だらけの場所"}
scoreboard objectives add AD_hb_root dummy {"text":"農業"}
scoreboard objectives add AD_hb_harv_honey dummy {"text":"大切なお客様"}
scoreboard objectives add AD_hb_silk_nest dummy {"text":"完全な引越し"}
scoreboard objectives add AD_hb_tacti_fish dummy {"text":"戦術的漁業"}
scoreboard objectives add AD_hb_tame_anima dummy {"text":"永遠の親友となるだろう"}
## Add scoreboards for advancements - potage00
scoreboard objectives add AD_pg_root dummy {"text":"首狩りぽたーじゅ"}
scoreboard objectives add AD_pg_tsutenkaku dummy {"text":"通天閣からの眺め"}
scoreboard objectives add AD_pg_treasure dummy {"text":"宝探し"}
scoreboard objectives add AD_pg_treasure_t dummy
scoreboard objectives add AD_pg_treasure_e dummy {"text":"エメラルド"}
scoreboard objectives add AD_pg_treasure_d dummy {"text":"ダイヤモンド"}
scoreboard objectives add AD_pg_treasure_g dummy {"text":"金"}
scoreboard objectives add AD_pg_treasure_i dummy {"text":"鉄"}
scoreboard objectives add AD_pg_treasure_r dummy {"text":"レッドストーン"}
scoreboard objectives add AD_pg_treasure_l dummy {"text":"ラピスラズリ"}
scoreboard objectives add AD_pg_treasure_q dummy {"text":"クォーツ"}
## Add scoreboards for summons minecart
scoreboard objectives add 300 dummy
scoreboard objectives add SecondSummon dummy
scoreboard objectives add SecondEliminate dummy

## Set scoreboards for game phase
scoreboard players set #mad Version 14
scoreboard players set #mad Phase 0
scoreboard players set #mad Difficulty 0
scoreboard players set #mad ExitMessage 0
## Set scoreboards for participants
scoreboard players set #mad Participant 0
scoreboard players set #mad NumParticipant 0
scoreboard players set #mad NumAlive 0
## Set scoreboards for area
scoreboard players set #mad 2 2
scoreboard players set #mad 1_meter 1
scoreboard players set #mad 10_meter 10
scoreboard players set #mad 100_meter 100
scoreboard players set #mad 1000_meter 1000
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
## Add scoreboards for summons minecart
scoreboard players set #mad 300 300
scoreboard players set #mad SecondSummon 0
scoreboard players set #mad SecondEliminate 0

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
## Set scoreboards for participants
scoreboard players set @a Participant 0
scoreboard players set @a NumParticipant 0
scoreboard players set @a NumAlive 0
## Add scoreboards for onground
scoreboard players set @a OnGround 0
## Set scoreboards for area
scoreboard players set @a PlusMinus 0
scoreboard players set @a 1_meter 0
scoreboard players set @a 10_meter 0
scoreboard players set @a 100_meter 0
scoreboard players set @a 1000_meter 0
scoreboard players set @a SummonPosition 0
## Set scoreboards for setting phase - common
scoreboard players set @a ThrowItem 0
scoreboard players set @a Select02 0
scoreboard players set @a Select04 0
scoreboard players set @a Select06 0
scoreboard players set @a Select11 0
scoreboard players set @a Select12 0
scoreboard players set @a Select13 0
scoreboard players set @a Select14 0
scoreboard players set @a Select15 0
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
scoreboard players set @a Select34 0
scoreboard players set @a Selected 0
## Set scoreboards for advancements
scoreboard players set @a HasAdvancements 0
## Set scoreboards for advancements - adventure
scoreboard players set @a AD_ad_adven_time 0
scoreboard players set @a AD_ad_arbalistic 0
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
scoreboard players set @a AD_nt_create_bc 0
scoreboard players set @a AD_nt_create_fbc 0
scoreboard players set @a AD_nt_fast_travl 0
scoreboard players set @a AD_nt_fortress 0
scoreboard players set @a AD_nt_get_wtskul 0
scoreboard players set @a AD_nt_blaze_rod 0
scoreboard players set @a AD_nt_rtrn_ghast 0
scoreboard players set @a AD_nt_root 0
scoreboard players set @a AD_nt_smn_wither 0
scoreboard players set @a AD_nt_uneasy_alc 0
## Set scoreboards for advancements - end
scoreboard players set @a AD_ed_drg_breath 0
scoreboard players set @a AD_ed_dragon_egg 0
scoreboard players set @a AD_ed_elytra 0
scoreboard players set @a AD_ed_end_gate 0
scoreboard players set @a AD_ed_end_city 0
scoreboard players set @a AD_ed_kill_dragn 0
scoreboard players set @a AD_ed_legitate 0
scoreboard players set @a AD_ed_resp_dragn 0
scoreboard players set @a AD_ed_root 0
## Set scoreboards for advancements - husbandry
scoreboard players set @a AD_hb_balanced 0
scoreboard players set @a AD_hb_break_hoe 0
scoreboard players set @a AD_hb_bred_all 0
scoreboard players set @a AD_hb_bred_anima 0
scoreboard players set @a AD_hb_catalogue 0
scoreboard players set @a AD_hb_fishy 0
scoreboard players set @a AD_hb_plant_seed 0
scoreboard players set @a AD_hb_root 0
scoreboard players set @a AD_hb_harv_honey 0
scoreboard players set @a AD_hb_silk_nest 0
scoreboard players set @a AD_hb_tacti_fish 0
scoreboard players set @a AD_hb_tame_anima 0
## Set scoreboards for advancements - potage00
scoreboard players set @a AD_pg_root 0
scoreboard players set @a AD_pg_tsutenkaku 0
scoreboard players set @a AD_pg_treasure 0
scoreboard players set @a AD_pg_treasure_t 0
scoreboard players set @a AD_pg_treasure_e 0
scoreboard players set @a AD_pg_treasure_d 0
scoreboard players set @a AD_pg_treasure_g 0
scoreboard players set @a AD_pg_treasure_i 0
scoreboard players set @a AD_pg_treasure_r 0
scoreboard players set @a AD_pg_treasure_l 0
scoreboard players set @a AD_pg_treasure_q 0

## Random
function mad:system/random_generator/initialize