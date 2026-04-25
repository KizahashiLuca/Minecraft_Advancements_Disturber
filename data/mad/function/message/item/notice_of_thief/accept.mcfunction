#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗へのメッセージ
$execute if entity @p[tag=mad_player$(victim_number)] run \
  tellraw @s \
    [\
      '',\
      {\
        translate: '[怪盗予告]  %s のアイテムを盗みました。',\
        with: [\
          {\
            selector: '@p[tag=mad_player$(victim_number)]',\
          },\
        ],\
        color: 'green',\
      },\
    ]
$execute unless entity @p[tag=mad_player$(victim_number)] run \
  tellraw @s \
    [\
      '',\
      {\
        translate: '[怪盗予告] 盗み先を指定できず、 アイテムを盗めませんでした。',\
        color: 'green',\
      },\
    ]

## 全員へのメッセージ
$execute if entity @p[tag=mad_player$(victim_number)] run \
  tellraw @a[tag=!mad_player$(thief_number)] \
    [\
      '',\
      {\
        translate: '[怪盗予告]  %s のアイテムが %s によって盗まれました。',\
        with: [\
          {\
            selector: '@p[tag=mad_player$(victim_number)]',\
          },\
          {\
            selector: '@s',\
          },\
        ],\
        color: 'green',\
      },\
    ]
$execute unless entity @p[tag=mad_player$(victim_number)] run \
  tellraw @a[tag=!mad_player$(thief_number)] \
    [\
      '',\
      {\
        translate: '[怪盗予告] 盗み先を指定できず、 %s によってアイテムは盗まれませんでした。',\
        with: [\
          {\
            selector: '@s',\
          },\
        ],\
        color: 'green',\
      },\
    ]
