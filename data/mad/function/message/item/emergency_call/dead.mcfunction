#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 全員へのメッセージ
#### チーム戦の場合
$execute if predicate mad:gamerule/match_mode/individual/ run \
  tellraw @a[predicate=mad:player/] \
    [\
      '',\
      {\
        translate: '[緊急招集] 招集者 %s が死亡しているため、 緊急招集は実行されませんでした。',\
        with: [\
          {\
            selector: '@p[tag=mad_player$(caller_number)]',\
          },\
        ],\
        color: 'green',\
      },\
    ]
#### チーム戦の場合
$execute if predicate mad:gamerule/match_mode/team run \
  tellraw @a[predicate=mad:player/team/$(caller_team)] \
    [\
      '',\
      {\
        translate: '[緊急招集] 招集者 %s が死亡しているため、 緊急招集は実行されませんでした。',\
        with: [\
          {\
            selector: '@p[tag=mad_player$(caller_number)]',\
          },\
        ],\
        color: 'green',\
      },\
    ]
