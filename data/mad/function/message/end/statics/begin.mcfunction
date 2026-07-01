#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 統計開始メッセージ表示
function mad:message/line_break
tellraw @a \
  [\
    '',\
    {\
      translate: '  %s',\
      with: [\
        {\
          translate: '進捗 統計',\
          bold: true,\
        },\
      ],\
    },\
  ]
