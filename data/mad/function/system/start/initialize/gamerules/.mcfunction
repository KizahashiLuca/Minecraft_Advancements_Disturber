#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 基本ゲームルール設定
#### 各ディメンションのゲームルールを設定
execute in minecraft:overworld run \
  function mad:system/start/initialize/gamerules/basic
execute in minecraft:the_nether run \
  function mad:system/start/initialize/gamerules/basic
execute in minecraft:the_end run \
  function mad:system/start/initialize/gamerules/basic
