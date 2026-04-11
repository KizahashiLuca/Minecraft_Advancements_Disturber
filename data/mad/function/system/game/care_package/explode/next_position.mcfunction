#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 次期支援物資場所決定
$function mad:system/game/care_package/calculate_summon_point/set_storage {number:'$(number)'}

## メッセージ表示
$function mad:message/game/care_package/before_drop/ with storage mad: care_package.$(number)

## サイドバー設定
$function mad:message/game/care_package/before_drop/sidebar/time with storage mad: care_package.$(number)
$function mad:message/game/care_package/before_drop/sidebar/position with storage mad: care_package.$(number)