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
#### ゲームフェーズ
function mad:phase/game/dead
#### 死亡数 - 死亡判定用
scoreboard players set @s NumberOfDeaths 2
