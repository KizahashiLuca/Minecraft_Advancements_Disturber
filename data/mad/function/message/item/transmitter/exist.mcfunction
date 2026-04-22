#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
$tellraw @s \
  [\
    '',\
    {\
      translate: '[発 信 機]  %s が $(dimension) [$(x), $(y), $(z)] にいます。',\
      with: [\
        {\
          selector: '@p[tag=mad_player$(player_number)]',\
        },\
      ],\
      color: 'green',\
    },\
  ]
