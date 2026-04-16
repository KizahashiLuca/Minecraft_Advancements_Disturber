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
#### 支援物資nへのテレポートのトリガーは $(n)0000 を取る
#### 0.0001 倍して支援物資番号を取得
execute store result storage mad: teleport.care_package.number int 0.0001 run \
  scoreboard players get @s TeleportTrigger
#### テレポート先の支援物資の座標をストレージに格納
function mad:system/common/triggered/teleport/care_package/set_storage with storage mad: teleport.care_package
#### テレポート
function mad:system/common/triggered/teleport/care_package/teleport with storage mad: teleport.pos

## ストレージ削除
data remove storage mad: teleport
