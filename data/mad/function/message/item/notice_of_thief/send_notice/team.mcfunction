#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗と同じチームへのメッセージ
$tellraw @a[predicate=mad:player/team/$(thief_team)] \
  [\
    '',\
    {\
      translate: '[怪盗予告]  %s が怪盗予告しました。 5秒後に誰かからアイテムを盗みます。',\
      with: [\
        {\
          selector: '@s',\
        },\
      ],\
      color: 'green',\
    },\
  ]

## 全員へのメッセージ
$tellraw @a[predicate=mad:player/team/not_$(thief_team)] \
  [\
    '',\
    {\
      translate: '[怪盗予告] 怪盗予告が誰かから出されました。 5秒後に誰かのアイテムが盗まれます。',\
      color: 'green',\
    },\
  ]
