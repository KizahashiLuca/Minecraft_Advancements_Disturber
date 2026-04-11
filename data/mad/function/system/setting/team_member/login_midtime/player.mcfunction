#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンド
execute at @s run playsound minecraft:ui.button.click ui @a

## プレイヤー情報
#### タグ
tag @s remove mad_player
tag @s remove mad_team_a
tag @s remove mad_team_b
tag @s remove mad_team_c
tag @s remove mad_team_d
tag @s remove mad_team_no
tag @s add MAD_Spectator
#### プレイヤーゲームモード
gamemode spectator @s
#### インベントリ
clear @s
#### 経験値
experience set @s 0 levels
experience set @s 0 points
#### ステータス効果
effect clear @s
#### 全進捗剥奪
advancement revoke @s everything

## チーム
team leave @s

## スコアボード設定
function mad:system/start/initialize/set_scoreboards/player/reset
function mad:system/start/initialize/set_scoreboards/spectator

## スコアボード設定
scoreboard players set #mad ReloadDisplay 0

## エンティティ削除
#### アイテムディスプレイ
kill @e[tag=MAD_ItemDisplay]
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Setting_TeamMember]
#### ブロックディスプレイ
kill @e[tag=MAD_BlockDisplay_Setting_TeamMember]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_member/manual/display/

## スコアボード設定
scoreboard players set #mad ReloadDisplay 0

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction