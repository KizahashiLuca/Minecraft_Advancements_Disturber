#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 降着判定
#### 降着した場合はOnGroundを2として判定する
#### 普通に降着
execute store result score @s OnGround run \
  data get entity @s OnGround 2.0
#### 水面/溶岩面/水流/溶岩流に降着
scoreboard players set @s[predicate=mad:care_package/detect_on_ground/is_in_fluids] OnGround 2

## テレポート先召喚
execute as @s[predicate=mad:care_package/detect_on_ground/on_ground] run \
  function mad:system/game/care_package/detect_on_ground/on_ground
