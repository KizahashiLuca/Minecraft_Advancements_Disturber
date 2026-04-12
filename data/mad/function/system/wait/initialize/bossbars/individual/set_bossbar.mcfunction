#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー設定
$bossbar add minecraft:bossbar_individual_$(number) \
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
$bossbar set minecraft:bossbar_individual_$(number) color white
$bossbar set minecraft:bossbar_individual_$(number) style notched_10
$bossbar set minecraft:bossbar_individual_$(number) visible true
$execute store result bossbar minecraft:bossbar_individual_$(number) max run \
  scoreboard players get @s TimeLimit
$execute store result bossbar minecraft:bossbar_individual_$(number) value run \
  scoreboard players get @s Second
