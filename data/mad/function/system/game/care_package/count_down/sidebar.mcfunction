#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 投下時にサイドバーの表示を変更
#### 投下時間
$function mad:message/game/care_package/sidebar/dropped \
  with storage mad: care_package.$(number)
#### ポジション
$function mad:message/game/care_package/sidebar/position \
  with storage mad: care_package.$(number)
