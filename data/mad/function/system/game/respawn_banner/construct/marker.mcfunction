#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー - マーカー召喚
$execute in $(dimension) run \
  summon minecraft:marker $(absolute_x) $(absolute_y) $(absolute_z) \
    {\
      Tags: [\
        'mad_death_point',\
        'mad_player$(victim_number)',\
      ],\
      NoGravity: 1b,\
      Invulnerable: 1b,\
    }
