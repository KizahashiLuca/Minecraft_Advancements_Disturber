#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムな時間をプレイヤーに付与
#### 乱数値出力
execute store result score #mad RandomValue run \
  function mad:system/game/care_package/explode/give_time/get_random_value
#### 残り秒数/制限時間に加算
scoreboard players operation @s Second += #mad RandomValue
scoreboard players operation @s TimeLimit += #mad RandomValue
#### 取得支援物資個数を更新
scoreboard players add @s GetCarePackageCount 1

## ボーナス取得メッセージ表示
function mad:message/game/care_package/give_time/individual

## 進捗付与
# advancement grant @s only mad:original/open_care_package
