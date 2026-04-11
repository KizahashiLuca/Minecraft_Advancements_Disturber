#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ召喚
#### タイトル
execute unless entity @e[tag=MAD_TextDisplay_Setting_Title] positioned ~ ~2.0 ~ run function mad:system/setting/root/display/title
#### タイトル
execute unless entity @e[tag=MAD_TextDisplay_Setting_ChangeSpectator] positioned ~ ~3.0 ~-12.40 run function mad:system/setting/root/display/change_spectator with storage mad: respawn_beacon
#### 対戦形式変更
execute if predicate mad:gamerule/match_mode/individual/solo positioned ~ ~1.50 ~ run function mad:system/setting/root/display/match_mode {text1:'変更できません',text2:'ソロ戦',color:'dark_blue'}
execute if predicate mad:gamerule/match_mode/individual/not_solo positioned ~ ~1.50 ~ run function mad:system/setting/root/display/match_mode {text1:'クリックして変更',text2:'個人戦',color:'dark_red'}
execute if predicate mad:gamerule/match_mode/team positioned ~ ~1.50 ~ run function mad:system/setting/root/display/match_mode {text1:'クリックして変更',text2:'チーム戦',color:'dark_green'}
#### 初期時間変更
execute positioned ~ ~1.25 ~ run function mad:system/setting/root/display/initial_time
#### 追加時間変更
execute positioned ~ ~1.00 ~ run function mad:system/setting/root/display/bonus_time_of_advancements
#### 支援物資間隔変更
execute positioned ~ ~0.75 ~ run function mad:system/setting/root/display/care_package_interval
#### ワールド範囲変更
execute positioned ~ ~0.50 ~ run function mad:system/setting/root/display/world_border
#### その他ルール変更
execute positioned ~ ~0.00 ~ run function mad:system/setting/root/display/other_rules
#### チーム戦ルール変更
execute positioned ~ ~-0.25 ~ run function mad:system/setting/root/display/team_rules
#### 中止
execute positioned ~ ~-0.75 ~ run function mad:system/setting/root/display/cancel
#### ゲーム開始
execute positioned ~ ~-0.75 ~ run function mad:system/setting/root/display/ok