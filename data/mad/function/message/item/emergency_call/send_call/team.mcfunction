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
$tellraw @p[tag=mad_player$(caller_number)] \
  [\
    '',\
    {\
      translate: '[緊急招集] 緊急招集しました。 5秒後に全員をあなたの場所に招集します。',\
      color: 'green',\
    },\
  ]

## チーム全員へのメッセージ
$tellraw @a[tag=!mad_player$(caller_number),predicate=mad:player/team/$(caller_team)] \
  [\
    '',\
    {\
      translate: '[緊急招集]  %s から緊急招集を受けました。 5秒後に全員が招集されます。',\
      with: [\
        {\
          selector: '@p[tag=mad_player$(caller_number)]',\
        },\
      ],\
      color: 'green',\
    },\
  ]
