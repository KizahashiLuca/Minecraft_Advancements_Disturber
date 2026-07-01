#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## アクションバー
title @a[distance=..2] title \
  [\
    '',\
  ]
execute as @s[scores={Second=19}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■',\
        color: 'red',\
      },\
      {\
        translate: '■■■■■■■■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=18}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■',\
        color: 'red',\
      },\
      {\
        translate: '■■■■■■■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=17}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■',\
        color: 'red',\
      },\
      {\
        translate: '■■■■■■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=16}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■',\
        color: 'red',\
      },\
      {\
        translate: '■■■■■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=15}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■',\
        color: 'red',\
      },\
      {\
        translate: '■■■■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=14}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■■',\
        color: 'red',\
      },\
      {\
        translate: '■■■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
title @a[distance=..2] times 0 20 0
