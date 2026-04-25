#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
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
