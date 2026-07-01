#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンドイベント
$execute as @p[tag=mad_player$(thief_number)] \
  at @s run \
  playsound minecraft:entity.allay.ambient_without_item block @a ~ ~ ~ 1.0 1.0 1.0

## メッセージ表示
$function mad:message/item/notice_of_thief/dead \
  {\
    thief_number: '$(thief_number)',\
  }
