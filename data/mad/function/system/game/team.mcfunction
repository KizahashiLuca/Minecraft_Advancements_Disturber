#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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