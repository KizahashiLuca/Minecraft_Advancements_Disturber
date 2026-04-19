#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードを設定
#### サイドバー - 全員用
$scoreboard players set 支援物資$(number)-投下時間 Sidebar $(score1)
$scoreboard players set 支援物資$(number)-投下場所 Sidebar $(score2)
$scoreboard players display name 支援物資$(number)-投下時間 Sidebar \
  [\
    '',\
    {\
      translate: '支援物資$(number)',\
    },\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下時間 Sidebar fixed \
  [\
    '',\
    {\
      translate: '投下まであと%s秒',\
      with: [\
        {\
          translate: '?',\
          color:'red',\
        },\
      ],\
    },\
  ]
$scoreboard players display name 支援物資$(number)-投下場所 Sidebar \
  [\
    '',\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下場所 Sidebar fixed \
  [\
    '',\
    {\
      translate: '[%s, %s]',\
      with: [\
        {\
          translate: '?',\
          color: 'green',\
        },\
        {\
          translate: '?',\
          color: 'green',\
        },\
      ],\
    },\
  ]
#### サイドバー - 赤チーム用
$scoreboard players set 支援物資$(number)-投下時間 SidebarA $(score1)
$scoreboard players set 支援物資$(number)-投下場所 SidebarA $(score2)
$scoreboard players display name 支援物資$(number)-投下時間 SidebarA \
  [\
    '',\
    {\
      translate: '支援物資$(number)',\
    },\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarA fixed \
  [\
    '',\
    {\
      translate: '投下まであと%s秒',\
      with: [\
        {\
          translate: '?',\
          color:'red',\
        },\
      ],\
    },\
  ]
$scoreboard players display name 支援物資$(number)-投下場所 SidebarA \
  [\
    '',\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarA fixed \
  [\
    '',\
    {\
      translate: '[%s, %s]',\
      with: [\
        {\
          translate: '?',\
          color: 'green',\
        },\
        {\
          translate: '?',\
          color: 'green',\
        },\
      ],\
    },\
  ]
#### サイドバー - 青チーム用
$scoreboard players set 支援物資$(number)-投下時間 SidebarB $(score1)
$scoreboard players set 支援物資$(number)-投下場所 SidebarB $(score2)
$scoreboard players display name 支援物資$(number)-投下時間 SidebarB \
  [\
    '',\
    {\
      translate: '支援物資$(number)',\
    },\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarB fixed \
  [\
    '',\
    {\
      translate: '投下まであと%s秒',\
      with: [\
        {\
          translate: '?',\
          color:'red',\
        },\
      ],\
    },\
  ]
$scoreboard players display name 支援物資$(number)-投下場所 SidebarB \
  [\
    '',\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarB fixed \
  [\
    '',\
    {\
      translate: '[%s, %s]',\
      with: [\
        {\
          translate: '?',\
          color: 'green',\
        },\
        {\
          translate: '?',\
          color: 'green',\
        },\
      ],\
    },\
  ]
#### サイドバー - 黄チーム用
$scoreboard players set 支援物資$(number)-投下時間 SidebarC $(score1)
$scoreboard players set 支援物資$(number)-投下場所 SidebarC $(score2)
$scoreboard players display name 支援物資$(number)-投下時間 SidebarC \
  [\
    '',\
    {\
      translate: '支援物資$(number)',\
    },\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarC fixed \
  [\
    '',\
    {\
      translate: '投下まであと%s秒',\
      with: [\
        {\
          translate: '?',\
          color:'red',\
        },\
      ],\
    },\
  ]
$scoreboard players display name 支援物資$(number)-投下場所 SidebarC \
  [\
    '',\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarC fixed \
  [\
    '',\
    {\
      translate: '[%s, %s]',\
      with: [\
        {\
          translate: '?',\
          color: 'green',\
        },\
        {\
          translate: '?',\
          color: 'green',\
        },\
      ],\
    },\
  ]
#### サイドバー - 緑チーム用
$scoreboard players set 支援物資$(number)-投下時間 SidebarD $(score1)
$scoreboard players set 支援物資$(number)-投下場所 SidebarD $(score2)
$scoreboard players display name 支援物資$(number)-投下時間 SidebarD \
  [\
    '',\
    {\
      translate: '支援物資$(number)',\
    },\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarD fixed \
  [\
    '',\
    {\
      translate: '投下まであと%s秒',\
      with: [\
        {\
          translate: '?',\
          color:'red',\
        },\
      ],\
    },\
  ]
$scoreboard players display name 支援物資$(number)-投下場所 SidebarD \
  [\
    '',\
  ]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarD fixed \
  [\
    '',\
    {\
      translate: '[%s, %s]',\
      with: [\
        {\
          translate: '?',\
          color: 'green',\
        },\
        {\
          translate: '?',\
          color: 'green',\
        },\
      ],\
    },\
  ]
