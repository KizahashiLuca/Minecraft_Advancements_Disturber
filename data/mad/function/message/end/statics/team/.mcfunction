#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム統計メッセージ表示
$tellraw @a \
  [\
    '',\
    {\
      translate: '    %s\n',\
      with: [\
        {\
          translate: '$(text)チーム',\
          color: '$(color)',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '      達成進捗個数 : %s個\n',\
      with: [\
        {\
          score: {\
            name: '#mad_team_$(team)',\
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
            name: '#mad_team_$(team)',\
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
            name: '#mad_team_$(team)',\
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
            name: '#mad_team_$(team)',\
            objective: 'GetBonusTime',\
          },\
          color: 'red',\
          bold: true,\
        },\
      ],\
    },\
  ]
