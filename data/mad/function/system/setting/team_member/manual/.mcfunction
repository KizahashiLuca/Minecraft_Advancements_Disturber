#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
scoreboard players set #mad ReloadDisplay 0

## 途中でログインしたプレイヤーの処理
execute as @a[predicate=mad:system/common/login_midtime/new_commer] run function mad:system/common/login_midtime/new_commer
execute as @a[predicate=mad:system/setting/login_midtime/spectator] run function mad:system/setting/team_member/login_midtime/spectator
execute if score #mad_player NumberOfPlayers matches 2.. as @e[tag=MAD_Interaction_Setting_ChangeSpectator] at @s on target run function mad:system/setting/team_member/login_midtime/player

## スペクテイターモードの処理
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run tp @a[distance=12..] @e[predicate=mad:marker/respawn_beacon,limit=1]

## チーム移動
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run function mad:system/setting/team_member/manual/detect/join_team/

## 右クリック検知
#### プレイヤーの頭
execute as @e[tag=MAD_Interaction_PlayerHead,nbt={interaction:{}}] at @s run function mad:system/setting/team_member/manual/detect/player_head/
#### ゲーム開始
execute as @e[tag=MAD_Interaction_OKLink] at @s on target run function mad:system/setting/team_member/manual/detect/ok
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_member/manual/detect/return

## ディスプレイ更新
execute if score #mad ReloadDisplay matches 1 at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_member/manual/display/player_head/
