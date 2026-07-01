#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サイドバーの表示を降着済みに変更
#### サイドバー - 全員用
$scoreboard players display numberformat 支援物資$(number)-投下時間 Sidebar fixed \
  [\
    '',\
    {\
      translate: '%s',\
      with: [\
        {\
          translate: '降着済み',\
          color: 'red',\
        },\
      ],\
    },\
  ]
#### サイドバー - 赤チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarA fixed \
  [\
    '',\
    {\
      translate: '%s',\
      with: [\
        {\
          translate: '降着済み',\
          color: 'red',\
        },\
      ],\
    },\
  ]
#### サイドバー - 青チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarB fixed \
  [\
    '',\
    {\
      translate: '%s',\
      with: [\
        {\
          translate: '降着済み',\
          color: 'red',\
        },\
      ],\
    },\
  ]
#### サイドバー - 黄チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarC fixed \
  [\
    '',\
    {\
      translate: '%s',\
      with: [\
        {\
          translate: '降着済み',\
          color: 'red',\
        },\
      ],\
    },\
  ]
#### サイドバー - 緑チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarD fixed \
  [\
    '',\
    {\
      translate: '%s',\
      with: [\
        {\
          translate: '降着済み',\
          color: 'red',\
        },\
      ],\
    },\
  ]
