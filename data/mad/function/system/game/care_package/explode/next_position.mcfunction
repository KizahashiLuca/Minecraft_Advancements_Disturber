#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 召喚地点決定
$function mad:system/game/care_package/calculate_summon_point/set_storage \
  {\
    number: '$(number)',\
  }

## 投下地点サイドバー設定
$function mad:system/game/care_package/explode/sidebar \
  with storage mad: care_package.$(number)

## 投下地点メッセージ表示
$function mad:message/game/care_package/announcement \
  with storage mad: care_package.$(number)

## サイドバー設定
$function mad:message/game/care_package/sidebar/time \
  with storage mad: care_package.$(number)
$function mad:message/game/care_package/sidebar/position \
  with storage mad: care_package.$(number)
