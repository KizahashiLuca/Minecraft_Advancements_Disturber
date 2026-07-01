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
#### ディメンション - 死亡メッセージ/発信機用(テキストの置換)
data modify storage mad: dimension.minecraft:overworld \
  set value 'オーバーワールド'
data modify storage mad: dimension.minecraft:the_nether \
  set value 'ネザー'
data modify storage mad: dimension.minecraft:the_end \
  set value 'エンド'
#### 試合形式 - 怪盗予告/緊急招集用(ファイルパスの置換)
execute if predicate mad:gamerule/match_mode/individual/ run \
  data modify storage mad: rules.match_mode.type \
    set value 'individual'
execute if predicate mad:gamerule/match_mode/team run \
  data modify storage mad: rules.match_mode.type \
    set value 'team'
#### 生存者数スコアボード - ゲーム終了処理用(スコアボードターゲットの置換)
execute if predicate mad:gamerule/match_mode/individual/ run \
  data modify storage mad: rules.match_mode.number_of_living_target \
    set value 'mad_player'
execute if predicate mad:gamerule/match_mode/team run \
  data modify storage mad: rules.match_mode.number_of_living_target \
    set value 'mad'
#### 生存者数スコアボード - ゲーム終了処理用(スコアボード名の置換)
execute if predicate mad:gamerule/match_mode/individual/ run \
  data modify storage mad: rules.match_mode.number_of_living \
    set value 'NumberOfPlayers'
execute if predicate mad:gamerule/match_mode/team run \
  data modify storage mad: rules.match_mode.number_of_living \
    set value 'NumberOfTeams'
#### ワールド範囲 - スポーン範囲用(ゲームルールコマンドの置換)
data modify storage mad: rules.spawn_radius \
  set value 0
#### ワールド範囲 - ランダムスポーン/支援物資投下地点/進捗「この世界の片隅に」算出用
execute store result storage mad: rules.world_size.full double 1 run \
  data get storage mad: rules.world_border 1
execute store result storage mad: rules.world_size.half double 1 run \
  data get storage mad: rules.world_border 0.5
execute store result storage mad: rules.world_size.quarter double 1 run \
  data get storage mad: rules.world_border 0.25
#### ワールド範囲 - ワールドボーダー設定用
data modify storage mad: world_spawn.minecraft:overworld.world_border \
  set from storage mad: rules.world_border
data modify storage mad: world_spawn.minecraft:the_nether.world_border \
  set from storage mad: rules.world_border
data modify storage mad: world_spawn.minecraft:the_end.world_border \
  set from storage mad: rules.world_border
#### 死亡メッセージ - ゲームルールコマンドの置換
execute if predicate mad:gamerule/match_mode/individual/ run \
  data modify storage mad: rules.show_death_messages \
    set value 'false'
execute if predicate mad:gamerule/match_mode/team run \
  data modify storage mad: rules.show_death_messages \
    set from storage mad: rules.death_message_visibility
#### 当たり判定 - true/falseの文字列で格納されているため変換
execute if data storage mad: {rules:{collision_rule:'true'}} run \
  data modify storage mad: rules.collision_rule \
    set value 'always'
execute if data storage mad: {rules:{collision_rule:'false'}} run \
  data modify storage mad: rules.collision_rule \
    set value 'pushOtherTeams'
#### ネームタグ表示 - true/falseの文字列で格納されているため変換
execute if data storage mad: {rules:{nametag_visibility:'true'}} run \
  data modify storage mad: rules.nametag_visibility \
    set value 'hideForOtherTeams'
execute if data storage mad: {rules:{nametag_visibility:'false'}} run \
  data modify storage mad: rules.nametag_visibility \
    set value 'never'
#### 死亡メッセージ - true/falseの文字列で格納されているため変換
execute if data storage mad: {rules:{death_message_visibility:'true'}} run \
  data modify storage mad: rules.death_message_visibility \
    set value 'hideForOtherTeams'
execute if data storage mad: {rules:{death_message_visibility:'false'}} run \
  data modify storage mad: rules.death_message_visibility \
    set value 'never'
