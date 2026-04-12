#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 途中でログインしたプレイヤーの処理
execute as @a[predicate=mad:system/common/login_midtime/new_commer] run \
  function mad:system/common/login_midtime/new_commer

## 時刻処理
function mad:system/common/time/tick

## ポジション
function mad:system/common/position/

## ディスプレイ召喚 : TODO
execute if predicate mad:system/common/time/tick/eq_zero \
  at @e[predicate=mad:marker/respawn_beacon,limit=1] \
  positioned ~ ~1 ~6.45 run \
  function mad:system/wait/display/

## フェーズ変更
execute if predicate mad:system/common/time/eq_zero run \
  function mad:system/fall/initialize/
