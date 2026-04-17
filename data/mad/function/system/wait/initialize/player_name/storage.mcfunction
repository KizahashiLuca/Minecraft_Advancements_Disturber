#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号とプレイヤー名を紐づけ
$data modify storage mad: player.$(tmp).name set \
  from entity @s EnderItems[0].components.'minecraft:profile'.name
