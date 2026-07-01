#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーの処理 - テレポート
#### 支援物資
execute as @s[predicate=mad:system/common/triggered/teleport/care_package] run \
  function mad:system/common/triggered/teleport/care_package/
#### ワールド中心
execute as @s[predicate=mad:system/common/triggered/teleport/center] run \
  function mad:system/common/triggered/teleport/center/

## トリガーの処理 - その他
function mad:system/common/triggered/error
