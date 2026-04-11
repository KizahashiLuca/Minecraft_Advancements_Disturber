#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スポーンポイント設定
execute as @a[predicate=mad:player/alive/respawn] run function mad:system/game/respawn/

## 生存者検出
function mad:system/game/count_alive/

## リスポーンバナー
execute if entity @p[predicate=mad:player/dead/] run function mad:system/game/respawn_banner/

# ## Respawn beacon system
# execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/structure] at @s run function mad:system/common/respawn_beacon/main
# execute as @e[predicate=mad:marker/respawn_beacon/position] at @s run function mad:system/common/respawn_beacon/construct