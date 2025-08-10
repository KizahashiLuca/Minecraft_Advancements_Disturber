#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 召喚地点算出
execute if predicate mad:gamerule/number_of_care_packages/ge_1 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'1'}
execute if predicate mad:gamerule/number_of_care_packages/ge_2 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'2'}
execute if predicate mad:gamerule/number_of_care_packages/ge_3 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'3'}
execute if predicate mad:gamerule/number_of_care_packages/ge_4 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'4'}
execute if predicate mad:gamerule/number_of_care_packages/ge_5 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'5'}