#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 全員へのメッセージ
$tellraw @a \
  [\
    '',\
    {\
      translate: '[怪盗予告] 怪盗 %s が死亡しているため、 アイテムは盗まれませんでした。',\
      with: [\
        {\
          selector: '@p[tag=mad_player$(thief_number)]',\
        },\
      ],\
      color: 'green',\
    },\
  ]
