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
$execute if predicate mad:system/game/timer/individual/second/gt_zero run \
  bossbar set minecraft:bossbar_individual_$(tmp) name \
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
$execute if predicate mad:system/game/timer/individual/second/le_zero run \
  bossbar set minecraft:bossbar_individual_$(tmp) name \
    [\
      '',\
      {\
        translate: '%s - 生存時間 終了',\
        with: [\
          {\
            selector: '@s',\
            color: 'red',\
            bold: true,\
          },\
        ],\
      },\
    ]
$execute store result bossbar minecraft:bossbar_individual_$(tmp) max run \
  scoreboard players get @s TimeLimit
$execute store result bossbar minecraft:bossbar_individual_$(tmp) value run \
  scoreboard players get @s Second
