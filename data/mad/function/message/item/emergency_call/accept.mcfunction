#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 緊急招集を発信したプレイヤーへのメッセージ
tellraw @s \
  [\
    '',\
    {\
      translate: '[緊急招集] あなたのチームが招集されました。',\
      color: 'green',\
    },\
  ]

## 全員へのメッセージ
#### 個人戦の場合
$execute if predicate mad:gamerule/match_mode/individual/ run \
  tellraw @a[tag=!mad_player$(caller_number),predicate=mad:player/] \
    [\
      '',\
      {\
        translate: '[緊急招集]  %s の場所に招集されました。',\
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
  tellraw @a[tag=!mad_player$(caller_number),predicate=mad:player/team/$(caller_team)] \
    [\
      '',\
      {\
        translate: '[緊急招集]  %s の場所に招集されました。',\
        with: [\
          {\
            selector: '@p[tag=mad_player$(caller_number)]',\
          },\
        ],\
        color: 'green',\
      },\
    ]
