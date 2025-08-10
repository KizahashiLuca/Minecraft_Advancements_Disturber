#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 次期支援物資場所決定
$function mad:system/game/care_package/calculate_summon_point/set_storage {number:'$(number)'}

## メッセージ表示
$function mad:message/game/care_package/before_drop/ with storage mad: care_package.$(number)

## サイドバー設定
$function mad:message/game/care_package/before_drop/sidebar/time with storage mad: care_package.$(number)
$function mad:message/game/care_package/before_drop/sidebar/position with storage mad: care_package.$(number)