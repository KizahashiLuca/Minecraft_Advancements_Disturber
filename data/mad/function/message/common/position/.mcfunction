#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
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
