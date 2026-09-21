#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー
#### 待機フェーズ
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name \
  [\
    '',\
    {\
      translate: '降下フェーズ',\
    }\
  ]
bossbar set minecraft:bossbar max 100
bossbar set minecraft:bossbar value 100
bossbar set minecraft:bossbar color white
bossbar set minecraft:bossbar style notched_10
bossbar set minecraft:bossbar visible true
