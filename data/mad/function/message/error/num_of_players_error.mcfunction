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
      translate: '[MAD] %s\n',\
      color: 'yellow',\
      with: [\
        {\
          translate: '人数エラー',\
          color: 'yellow',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '[MAD]   所定人数 : %s人\n',\
      color: 'yellow',\
      with: [\
        {\
          translate: ' 1 - 20 ',\
          color: 'yellow',\
        },\
      ],\
    },\
    {\
      translate: '[MAD]   現在人数 : %s人\n',\
      color: 'yellow',\
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
      translate: '[MAD] 観戦者は %s になってください\n',\
      color: 'yellow',\
      with: [\
        {\
          translate: 'スペクテイターモード',\
          color: 'red',\
          bold: true,\
          underlined: true,\
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
