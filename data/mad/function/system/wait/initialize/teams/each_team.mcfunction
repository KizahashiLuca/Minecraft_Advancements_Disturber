#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー
$bossbar add minecraft:mad_team_$(team) \
  [\
    '',\
    {\
      translate: '%s - 生存時間 残り %s 秒',\
      with: [\
        {\
          text: '$(text)チーム',\
          color: '$(color)',\
          bold: true,\
        },\
        {\
          score: {\
            name: '#mad_team_$(team)',\
            objective: 'Second',\
          },\
          color: 'green',\
          bold: true,\
        },\
      ],\
      color: 'white',\
      bold: false,\
      italic: false,\
    },\
  ]
$bossbar set minecraft:mad_team_$(team) color white
$bossbar set minecraft:mad_team_$(team) style notched_10
$bossbar set minecraft:mad_team_$(team) visible true
$execute store result bossbar minecraft:mad_team_$(team) max run \
  scoreboard players get #mad_team_$(team) TimeLimit
$execute store result bossbar minecraft:mad_team_$(team) value run \
  scoreboard players get #mad_team_$(team) Second
