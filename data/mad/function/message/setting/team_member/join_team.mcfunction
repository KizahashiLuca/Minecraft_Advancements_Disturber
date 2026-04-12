#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム変更メッセージ表示
$tellraw @s \
  [\
    '',\
    {\
      translate: '[MAD] チーム編成設定: %sに参加',\
      with: [\
        {\
          text: '$(text)チーム',\
          bold: true,\
          color: '$(color)',\
        },\
      ],\
      color:'green',\
    },\
  ]
