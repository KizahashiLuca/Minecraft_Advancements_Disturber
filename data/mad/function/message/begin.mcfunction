#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 共通開始メッセージ表示
function mad:message/line_break
function mad:message/line_horizontal
tellraw @a \
  [\
    '',\
    {\
      translate: ' Minecraft\n',\
      color: 'red',\
      bold: true,\
    },\
    {\
      translate: '  Advancements\n',\
      color: 'red',\
      bold: true,\
    },\
    {\
      translate: '   Disturber β-4.0 - JE 26.1\n',\
      color: 'red',\
      bold: true,\
    },\
    {\
      translate: '  企画 : %s\n',\
      with: [\
        {\
          translate: 'ぽたーじゅ',\
          hover_event: {\
            action: 'show_text',\
            value: 'Twitter(現X) @potagegatop',\
          },\
          click_event: {\
            action: 'open_url',\
            url: 'http://x.com/potagegatop',\
          },\
        },\
      ],\
      color: 'green',\
      bold: true,\
    },\
    {\
      translate: '  制作 : %s',\
      with: [\
        {\
          translate: 'KizahashiLuca',\
          hover_event: {\
            action: 'show_text',\
            value: 'Twitter(現X) @KizahashiLuca',\
          },\
          click_event: {\
            action: 'open_url',\
            url: 'http://x.com/KizahashiLuca',\
          },\
        },\
      ],\
      color: 'green',\
      bold: true,\
    },\
  ]
function mad:message/line_horizontal
