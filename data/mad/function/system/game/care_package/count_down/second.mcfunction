#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
$scoreboard players remove #mad_care_package_$(number) Second 1

## 現在の秒数をストレージに格納
$execute store result storage mad: care_package.$(number).second int 1 run \
  scoreboard players get #mad_care_package_$(number) Second

## 投下までの秒数で処理を分岐
#### 1秒以上ある場合は、投下までの秒数をサイドバーに表示
$execute if score #mad_care_package_$(number) Second matches 1.. run \
  function mad:message/game/care_package/sidebar/time \
    with storage mad: care_package.$(number)
#### 0秒の場合は、投下予定のチャンクを強制読込
$execute if score #mad_care_package_$(number) Second matches 0 run \
  forceload add $(absolute_x) $(absolute_z) $(absolute_x) $(absolute_z)
#### 0秒以下の場合は、支援物資召喚
$execute if score #mad_care_package_$(number) Second matches ..0 \
  at @e[predicate=mad:marker/world_spawn,limit=1] run \
  function mad:system/game/care_package/count_down/summon \
    with storage mad: care_package.$(number)
