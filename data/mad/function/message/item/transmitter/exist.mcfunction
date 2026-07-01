#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
$tellraw @s \
  [\
    '',\
    {\
      translate: '[発 信 機]  %s が %s [$(x), $(y), $(z)] にいます。',\
      with: [\
        {\
          selector: '@p[tag=mad_player$(player_number)]',\
        },\
        {\
          storage: 'mad:',\
          nbt: 'dimension.\'$(dimension)\'',\
        },\
      ],\
      color: 'green',\
    },\
  ]
