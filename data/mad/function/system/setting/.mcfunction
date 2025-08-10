#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 途中でログインしたプレイヤーの処理
execute as @a[predicate=mad:system/common/login_midtime/new_commer] run function mad:system/common/login_midtime/new_commer
execute as @a[predicate=mad:system/setting/login_midtime/spectator] run function mad:system/setting/login_midtime/spectator
execute if score #mad_player NumberOfPlayers matches 2.. as @e[tag=MAD_Interaction_Setting_ChangeSpectator] at @s on target run function mad:system/setting/login_midtime/player

## フェーズ分岐
#### ルートフェーズ
execute if predicate mad:phase/setting/root run function mad:system/setting/root/
#### 対戦形式変更フェーズ
execute if predicate mad:phase/setting/match_mode run function mad:system/setting/match_mode/
#### 初期時間変更フェーズ
execute if predicate mad:phase/setting/initial_time run function mad:system/setting/initial_time/
#### 追加時間変更フェーズ
execute if predicate mad:phase/setting/bonus_time_of_advancements run function mad:system/setting/bonus_time_of_advancements/
#### 支援物資間隔変更フェーズ
execute if predicate mad:phase/setting/care_package_interval run function mad:system/setting/care_package_interval/
#### ワールド範囲変更フェーズ
execute if predicate mad:phase/setting/world_border run function mad:system/setting/world_border/
#### その他ルール変更フェーズ
execute if predicate mad:phase/setting/other_rules/ run function mad:system/setting/other_rules/
#### チーム戦ルール変更フェーズ
execute if predicate mad:phase/setting/team_rules/ run function mad:system/setting/team_rules/