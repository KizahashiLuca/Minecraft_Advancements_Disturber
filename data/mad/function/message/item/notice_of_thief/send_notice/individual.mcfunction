#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗へのメッセージ
$tellraw @p[tag=mad_player$(thief_number)] \
  [\
    '',\
    {\
      translate: '[怪盗予告] 怪盗予告しました。 5秒後に誰かからアイテムを盗みます。',\
      color: 'green',\
    },\
  ]

## 全員へのメッセージ
$tellraw @a[tag=!mad_player$(thief_number)] \
  [\
    '',\
    {\
      translate: '[怪盗予告] 怪盗予告が誰かから出されました。 5秒後に誰かのアイテムが盗まれます。',\
      color: 'green',\
    },\
  ]
