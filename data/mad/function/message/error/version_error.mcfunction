#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## バージョンエラーメッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '[MAD] %s\n',\
      color: 'yellow',\
      with: [\
        {\
          translate: 'バージョンエラー',\
          color: 'yellow',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '[MAD]   対応 : %s 以降\n',\
      color: 'yellow',\
      with: [\
        {\
          translate: 'Java Edition 26.1',\
          color: 'yellow',\
        },\
      ],\
    },\
    {\
      translate: '[MAD]   現在 : %s\n',\
      color: 'yellow',\
      with: [\
        {\
          translate: 'Java Edition %s.%s.%s',\
          color: 'red',\
          bold: true,\
          with: [\
            {\
              score: {\
                name: '#mad',\
                objective: 'MajorVersion',\
              },\
            },\
            {\
              score: {\
                name: '#mad',\
                objective: 'MinorVersion',\
              },\
            },\
            {\
              score: {\
                name: '#mad',\
                objective: 'PatchVersion',\
              },\
            },\
          ],\
        },\
      ],\
    },\
  ]
