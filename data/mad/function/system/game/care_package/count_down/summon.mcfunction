#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資召喚
$summon minecraft:chest_minecart $(x) $(y) $(z) {Invulnerable:1b,Tags:['MAD_CarePackage','MAD_CarePackage_$(number)'],UUID:[I;$(number),$(number),$(number),$(number)],LootTable:'mad:care_package/$(type)_$(with)_end'}

## メッセージ表示
$function mad:message/game/care_package/after_drop/ with storage mad: care_package.$(number)

## サイドバー設定
$function mad:message/game/care_package/after_drop/sidebar/ with storage mad: care_package.$(number)

## ストレージ格納
$data modify storage mad: care_package.$(number).flag set value 1