#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 人数エラーメッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '  人数エラー\n',\
      color: 'yellow',\
      bold: true,\
    },\
    {\
      translate: '    所定人数 : %s人\n',\
      with: [\
        {\
          translate: ' 1 - 20 ',\
          color: 'green',\
        },\
      ],\
    },\
    {\
      translate: '    現在人数 : %s人\n',\
      with: [\
        {\
          score: {\
            name: '#mad',\
            objective: 'NumberOfPlayers',\
          },\
          color: 'red',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '    観戦者は %s になってください',\
      with: [\
        {\
          translate: 'スペクテイターモード',\
          color: 'red',\
          underlined: true,\
          bold: true,\
          hover_event: {\
            action: 'show_text',\
            value: [\
              {\
                translate: 'ここをクリックすることで、\nスペクテイターモードに変更できます',\
              },\
            ],\
          },\
          click_event: {\
            action: 'run_command',\
            command: '/trigger SpectatorTrigger set 1',\
          },\
        },\
      ],\
    },\
  ]
