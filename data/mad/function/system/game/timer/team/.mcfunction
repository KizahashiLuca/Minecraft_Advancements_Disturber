#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
$scoreboard players remove #mad_team_$(team) Second 1

## タイムアップ判定
$execute if score #mad_team_$(team) Second matches 0 run \
  function mad:system/game/timer/team/time_up \
    with storage mad: team.$(team)

## ボスバー設定
$execute store result bossbar minecraft:mad_team_$(team) max run \
  scoreboard players get #mad_team_$(team) TimeLimit
$execute store result bossbar minecraft:mad_team_$(team) value run \
  scoreboard players get #mad_team_$(team) Second
$bossbar set minecraft:mad_team_$(team) name \
  [\
    '',\
    {\
      translate:　'%s - 生存時間 残り %s 秒',\
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
    },\
  ]

## サウンドイベント
$execute if score #mad_team_$(team) Second matches 4..10 \
  as @a[predicate=mad:player/team/$(team)] \
  at @s run \
  playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
$execute if score #mad_team_$(team) Second matches 1..3 \
  as @a[predicate=mad:player/team/$(team)] \
  at @s run \
  playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
$execute if score #mad_team_$(team) Second matches 0 \
  as @a[predicate=mad:player/team/$(team)] \
  at @s run \
  playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1
