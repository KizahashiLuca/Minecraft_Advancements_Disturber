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
$scoreboard players set #mad TmpX $(x)
scoreboard players operation #mad TmpX -= #mad PosX
$scoreboard players set #mad TmpZ $(z)
scoreboard players operation #mad TmpZ -= #mad PosZ

## 投下時にサイドバーの表示を変更
#### ポジション
$function mad:message/game/care_package/sidebar/position with storage mad: care_package.$(number)
