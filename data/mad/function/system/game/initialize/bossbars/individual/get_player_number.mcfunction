#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号とプレイヤー名をボスバー表示用ストレージに格納
$data modify storage mad: player.display \
  set from storage mad: player.$(tmp)
