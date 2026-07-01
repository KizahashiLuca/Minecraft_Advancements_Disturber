#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ステータス効果
effect clear @s minecraft:slow_falling

## 強制テレポート先召喚
$summon minecraft:marker ~ ~ ~ \
  {\
    Tags: [\
      'mad_teleporter',\
      '$(name)',\
    ],\
    NoGravity: 1b,\
    Invulnerable: 1b,\
  }
$data modify entity @e[type=minecraft:marker,tag=$(name),limit=1] Rotation \
  set from entity @p[name=$(name)] Rotation
