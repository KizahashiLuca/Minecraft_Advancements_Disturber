#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## PvP解禁の予告メッセージ
tellraw @a \
  [\
    '',\
    {\
      translate: '[MAD] %s',\
      with: [\
        {\
          translate: 'PvP解禁タイマー',\
          color: 'green',\
          bold: true,\
        },\
      ],\
      color: 'green',\
    },\
  ]
$tellraw @a \
  [\
    '',\
    {\
      translate: '  あと$(sec)分でPvPが解禁になります。',\
      color: 'green',\
    },\
  ]
