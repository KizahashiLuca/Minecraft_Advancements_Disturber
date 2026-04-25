#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## アクションバー
title @a[distance=..2] title \
  [\
    '',\
  ]
execute as @s[scores={Second=13}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■■■',\
        color: 'yellow',\
      },\
      {\
        translate: '■■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=12}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■■■■',\
        color: 'yellow',\
      },\
      {\
        translate: '■■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=11}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■■■■■',\
        color: 'yellow',\
      },\
      {\
        translate: '■■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=10}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■■■■■■',\
        color: 'yellow',\
      },\
      {\
        translate: '■■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=9}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■■■■■■■',\
        color: 'yellow',\
      },\
      {\
        translate: '■■■■■■■■■',\
        color: 'gray',\
      },\
    ]
execute as @s[scores={Second=8}] run \
  title @a[distance=..2] subtitle \
    [\
      '',\
      {\
        translate: '■■■■■■■■■■■■',\
        color: 'yellow',\
      },\
      {\
        translate: '■■■■■■■■',\
        color: 'gray',\
      },\
    ]
title @a[distance=..2] times 0 20 0
