#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ディメンション検知
#### エンド以外の場合
execute unless predicate mad:dimension/the_end run \
  function mad:system/item/return_portal/not_construct
#### エンドの場合
execute if predicate mad:dimension/the_end run \
  function mad:system/item/return_portal/construct

## アーマースタンドキル
kill @s
