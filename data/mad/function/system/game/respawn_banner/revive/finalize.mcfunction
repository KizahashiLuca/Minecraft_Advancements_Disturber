#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 蘇生
$execute as @p[name=$(name)] run \
  function mad:system/game/detect_dying/kill/pvp_off

## アーマースタンド削除
$kill @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}]

## パーティクル
particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.8 0.2 0.05 1000 normal @a

## サウンドイベント
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0

## テレポート
$tp @p[name=$(name)] ~ ~ ~
