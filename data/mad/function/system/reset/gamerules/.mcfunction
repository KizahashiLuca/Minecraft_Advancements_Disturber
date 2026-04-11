#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 基本ゲームルール設定
#### 各ディメンションのゲームルールを設定
execute in minecraft:overworld run \
  function mad:system/reset/gamerules/basic
execute in minecraft:the_nether run \
  function mad:system/reset/gamerules/basic
execute in minecraft:the_end run \
  function mad:system/reset/gamerules/basic
