#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーの処理 - ゲーム制御トリガー
#### ルートダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered/execute/root] run \
  function mad:system/setting/root/initialize
