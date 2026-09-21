#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
scoreboard players remove #mad Second 1
#### 0秒未満の場合、59秒にセット
execute if predicate mad:system/common/time/second/lt_zero run \
  scoreboard players set #mad Second 59
