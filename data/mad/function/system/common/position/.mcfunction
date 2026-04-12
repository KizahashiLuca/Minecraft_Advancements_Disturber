#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ポジション算出
#### 座標/角度取得
execute as @a run \
  function mad:system/common/position/get_data
#### 角度調整
scoreboard players add @a Angle 225
#### 負の角度を 0-360 の範囲に合わせる
scoreboard players add @a[scores={Angle=..0}] Angle 3600
#### 角度を 0-7 の範囲で取得
scoreboard players operation @a Angle /= #mad 450

## ポジション表示
execute as @a run \
  function mad:system/common/position/set_display
