#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ポジション表示
$title @s actionbar \
  [\
    '',\
    {\
      translate: '現在の座標 : (%s, %s, %s)    方角 : %s',\
      with: [\
        {\
          score: {\
            name: '@s',\
            objective: 'PosX',\
          },\
        },\
        {\
          score: {\
            name: '@s',\
            objective: 'PosY',\
          },\
        },\
        {\
          score: {\
            name: '@s',\
            objective: 'PosZ',\
          },\
        },\
        {\
          nbt: 'position.$(angle)',\
          storage: 'mad:',\
        },\
      ],\
      color: 'light_purple',\
    },\
  ]
