#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
#### 残り秒数/制限時間に加算
$scoreboard players operation $(killer_address) Second += #mad BonusTimeOfKill
$scoreboard players operation $(killer_address) TimeLimit += #mad BonusTimeOfKill
#### 総獲得時間を更新
$scoreboard players operation $(killer_address) GetBonusTime += #mad BonusTimeOfKill
