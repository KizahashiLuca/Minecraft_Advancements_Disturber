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
