#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
function mad:message/game/time_up/individual

## 生存者のキル
kill @s
gamemode spectator @s

## スコアボード設定
#### ゲームフェーズ
function mad:phase/game/dead
#### 死亡数 - 死亡判定用
scoreboard players set @s NumberOfDeaths 2
#### タイマー - 残り時間(秒数)
scoreboard players set @s Second 0
