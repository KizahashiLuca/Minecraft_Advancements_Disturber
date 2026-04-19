#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 各支援物資のフラグ管理
#### 支援物資の投下フラグが 0 (false) の場合のみ減算処理を実行
execute if predicate mad:gamerule/number_of_care_packages/ge_1 \
  if predicate mad:care_package/compare_flag/1 run \
  function mad:system/game/care_package/count_down/second \
    with storage mad: care_package.1
execute if predicate mad:gamerule/number_of_care_packages/ge_2 \
  if predicate mad:care_package/compare_flag/2 run \
  function mad:system/game/care_package/count_down/second \
    with storage mad: care_package.2
execute if predicate mad:gamerule/number_of_care_packages/ge_3 \
  if predicate mad:care_package/compare_flag/3 run \
  function mad:system/game/care_package/count_down/second \
    with storage mad: care_package.3
execute if predicate mad:gamerule/number_of_care_packages/ge_4 \
  if predicate mad:care_package/compare_flag/4 run \
  function mad:system/game/care_package/count_down/second \
    with storage mad: care_package.4
execute if predicate mad:gamerule/number_of_care_packages/ge_5 \
  if predicate mad:care_package/compare_flag/5 run \
  function mad:system/game/care_package/count_down/second \
    with storage mad: care_package.5
