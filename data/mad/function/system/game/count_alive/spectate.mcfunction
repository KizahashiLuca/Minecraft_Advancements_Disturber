#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 一番近くのプレイヤーにテレポート
$tp @s @p[predicate=mad:player/alive/$(team),sort=nearest]

## スペクテイターモードへ変更
$spectate @p[predicate=mad:player/alive/$(team),sort=nearest] @s