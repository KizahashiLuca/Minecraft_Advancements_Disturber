#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 個人統計メッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '    %s\n',\
      with: [\
        {\
          selector: '@s',\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '      達成進捗個数 : %s個\n',\
      with: [\
        {\
          score: {\
            name: '@s',\
            objective: 'HasAdvancements',\
          },\
          color: 'red',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '      物資獲得回数 : %s回\n',\
      with: [\
        {\
          score: {\
            name: '@s',\
            objective: 'GetCarePackageCount',\
          },\
          color: 'red',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '      獲得生存時間 : %s秒\n',\
      with: [\
        {\
          score: {\
            name: '@s',\
            objective: 'TimeLimit',\
          },\
          color: 'red',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '        内,プレイヤー撃破ボーナス : %s秒',\
      with: [\
        {\
          score: {\
            name: '@s',\
            objective: 'GetBonusTime',\
          },\
          color: 'red',\
          bold: true,\
        },\
      ],\
    },\
  ]
