#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーの処理 - ゲーム制御トリガー
#### ルートダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered_execute/root] run \
  function mad:system/setting/root/initialize
