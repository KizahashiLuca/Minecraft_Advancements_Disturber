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
      translate: '[どっか行け矢]  %s が死亡しているため、 テレポートしませんでした。',\
      with: [\
        {\
          selector: '@p[tag=mad_player$(teleportee_number)]',\
        },\
      ],\
      color: 'green',\
    },\
  ]
