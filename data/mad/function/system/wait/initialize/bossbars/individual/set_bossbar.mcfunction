#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー設定
$bossbar add minecraft:bossbar_individual_$(tmp) \
  [\
    '',\
    {\
      translate: '%s - 生存時間 残り %s 秒',\
      with: [\
        {\
          selector: '@s',\
          color: 'red',\
          bold: true,\
        },\
        {\
          score: {\
            name: '@s',\
            objective: 'Second',\
          },\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
  ]
$bossbar set minecraft:bossbar_individual_$(tmp) color white
$bossbar set minecraft:bossbar_individual_$(tmp) style notched_10
$bossbar set minecraft:bossbar_individual_$(tmp) visible true
$execute store result bossbar minecraft:bossbar_individual_$(tmp) max run \
  scoreboard players get @s TimeLimit
$execute store result bossbar minecraft:bossbar_individual_$(tmp) value run \
  scoreboard players get @s Second
