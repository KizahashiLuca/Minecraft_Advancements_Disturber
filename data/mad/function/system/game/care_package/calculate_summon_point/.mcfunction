#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 召喚地点算出
execute if predicate mad:gamerule/number_of_care_packages/ge_1 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'1'}
execute if predicate mad:gamerule/number_of_care_packages/ge_2 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'2'}
execute if predicate mad:gamerule/number_of_care_packages/ge_3 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'3'}
execute if predicate mad:gamerule/number_of_care_packages/ge_4 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'4'}
execute if predicate mad:gamerule/number_of_care_packages/ge_5 run function mad:system/game/care_package/calculate_summon_point/set_storage {number:'5'}