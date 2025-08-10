#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
execute if predicate mad:gamerule/number_of_care_packages/ge_1 if predicate mad:care_package/compare_flag/1 run function mad:system/game/care_package/count_down/second with storage mad: care_package.1
execute if predicate mad:gamerule/number_of_care_packages/ge_2 if predicate mad:care_package/compare_flag/2 run function mad:system/game/care_package/count_down/second with storage mad: care_package.2
execute if predicate mad:gamerule/number_of_care_packages/ge_3 if predicate mad:care_package/compare_flag/3 run function mad:system/game/care_package/count_down/second with storage mad: care_package.3
execute if predicate mad:gamerule/number_of_care_packages/ge_4 if predicate mad:care_package/compare_flag/4 run function mad:system/game/care_package/count_down/second with storage mad: care_package.4
execute if predicate mad:gamerule/number_of_care_packages/ge_5 if predicate mad:care_package/compare_flag/5 run function mad:system/game/care_package/count_down/second with storage mad: care_package.5