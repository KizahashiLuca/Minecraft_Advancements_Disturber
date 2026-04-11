#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### ディメンション
data modify storage mad: dimension.minecraft:overworld set value 'オーバーワールド'
data modify storage mad: dimension.minecraft:the_nether set value 'ネザー'
data modify storage mad: dimension.minecraft:the_end set value 'エンド'
#### 試合形式
execute if predicate mad:gamerule/match_mode/individual/ run data modify storage mad: gamerule.match_mode.type set value 'individual'
execute if predicate mad:gamerule/match_mode/team run data modify storage mad: gamerule.match_mode.type set value 'team'
#### 生存者スコアボード
execute if predicate mad:gamerule/match_mode/individual/ run data modify storage mad: gamerule.match_mode.number_of_living set value 'NumberOfPlayers'
execute if predicate mad:gamerule/match_mode/team run data modify storage mad: gamerule.match_mode.number_of_living set value 'NumberOfTeams'
#### ワールド範囲
execute store result storage mad: gamerule.spawn_radius int 1 run scoreboard players get #mad WorldBorder
execute store result storage mad: gamerule.world_border.full int 1 run scoreboard players get #mad WorldBorder
execute store result storage mad: gamerule.world_border.half int 0.5 run scoreboard players get #mad WorldBorder
execute store result storage mad: gamerule.world_border.quarter int 0.25 run scoreboard players get #mad WorldBorder
execute store result storage mad: world_spawn.overworld.world_border int 1 run scoreboard players get #mad WorldBorder
execute store result storage mad: world_spawn.the_nether.world_border int 1 run scoreboard players get #mad WorldBorder
execute store result storage mad: world_spawn.the_end.world_border int 1 run scoreboard players get #mad WorldBorder
#### 難易度
execute if predicate mad:gamerule/difficulty/peaceful run data modify storage mad: gamerule.difficulty set value 'peaceful'
execute if predicate mad:gamerule/difficulty/easy run data modify storage mad: gamerule.difficulty set value 'easy'
execute if predicate mad:gamerule/difficulty/normal run data modify storage mad: gamerule.difficulty set value 'normal'
execute if predicate mad:gamerule/difficulty/hard run data modify storage mad: gamerule.difficulty set value 'hard'
#### 天気サイクル
execute if predicate mad:gamerule/daylight_cycle/true run data modify storage mad: gamerule.daylight_cycle set value 'true'
execute if predicate mad:gamerule/daylight_cycle/false run data modify storage mad: gamerule.daylight_cycle set value 'false'
#### 昼夜サイクル
execute if predicate mad:gamerule/weather_cycle/true run data modify storage mad: gamerule.weather_cycle set value 'true'
execute if predicate mad:gamerule/weather_cycle/false run data modify storage mad: gamerule.weather_cycle set value 'false'
#### フレンドリーファイア
execute if predicate mad:gamerule/team_rules/2/friendly_fire/true run data modify storage mad: gamerule.friendly_fire set value 'true'
execute if predicate mad:gamerule/team_rules/2/friendly_fire/false run data modify storage mad: gamerule.friendly_fire set value 'false'
#### 当たり判定
execute if predicate mad:gamerule/team_rules/2/collision_rule/true run data modify storage mad: gamerule.collision_rule set value 'always'
execute if predicate mad:gamerule/team_rules/2/collision_rule/false run data modify storage mad: gamerule.collision_rule set value 'pushOtherTeams'
#### ネームタグ表示
execute if predicate mad:gamerule/team_rules/2/nametag_visibility/true run data modify storage mad: gamerule.nametag_visibility set value 'hideForOtherTeams'
execute if predicate mad:gamerule/team_rules/2/nametag_visibility/false run data modify storage mad: gamerule.nametag_visibility set value 'never'
#### 透明化の視認
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/true run data modify storage mad: gamerule.see_friendly_invisibles set value 'true'
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/false run data modify storage mad: gamerule.see_friendly_invisibles set value 'false'
#### 死亡メッセージ
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/true run data modify storage mad: gamerule.death_message_visibility set value 'hideForOtherTeams'
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/false run data modify storage mad: gamerule.death_message_visibility set value 'never'
#### 昼夜サイクル
execute if predicate mad:gamerule/match_mode/individual/ run data modify storage mad: gamerule.show_death_messages set value 'false'
execute if predicate mad:gamerule/match_mode/team if predicate mad:gamerule/team_rules/2/death_message_visibility/true run data modify storage mad: gamerule.show_death_messages set value 'true'
execute if predicate mad:gamerule/match_mode/team if predicate mad:gamerule/team_rules/2/death_message_visibility/false run data modify storage mad: gamerule.show_death_messages set value 'false'
#### 支援物資
execute if predicate mad:gamerule/number_of_care_packages/ge_1 run function mad:system/wait/initialize/storages/care_package {number:'1'}
execute if predicate mad:gamerule/number_of_care_packages/ge_2 run function mad:system/wait/initialize/storages/care_package {number:'2'}
execute if predicate mad:gamerule/number_of_care_packages/ge_3 run function mad:system/wait/initialize/storages/care_package {number:'3'}
execute if predicate mad:gamerule/number_of_care_packages/ge_4 run function mad:system/wait/initialize/storages/care_package {number:'4'}
execute if predicate mad:gamerule/number_of_care_packages/ge_5 run function mad:system/wait/initialize/storages/care_package {number:'5'}