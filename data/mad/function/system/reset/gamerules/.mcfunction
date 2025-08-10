#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 基本ゲームルール設定
#### 各ディメンションのゲームルールを設定
execute in minecraft:overworld run function mad:system/reset/gamerules/basic
execute in minecraft:the_nether run function mad:system/reset/gamerules/basic
execute in minecraft:the_end run function mad:system/reset/gamerules/basic