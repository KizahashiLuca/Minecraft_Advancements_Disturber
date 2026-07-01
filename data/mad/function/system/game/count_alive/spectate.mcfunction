#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 一番近くのプレイヤーにテレポート
$tp @s @p[predicate=mad:player/alive/$(team),sort=nearest]

## スペクテイターモードへ変更
$spectate @p[predicate=mad:player/alive/$(team),sort=nearest] @s
