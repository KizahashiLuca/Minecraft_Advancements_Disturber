#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
#### ゲームフェーズ
function mad:phase/dead/player
#### 死亡数 - 死亡判定用
scoreboard players set @s NumberOfDeaths 2
