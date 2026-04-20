#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー - アーマースタンド召喚
#### 胴体
$execute as @e[type=minecraft:marker,tag=mad_player$(victim_number),limit=1] \
  at @s run \
  summon minecraft:armor_stand ~ ~-1.2 ~-1 \
    {\
      Tags: [\
        'mad_player$(victim_number)',\
      ],\
      NoGravity: 1b,\
      Invulnerable: 1b,\
      Invisible: 1b,\
      NoBasePlate: 0b,\
      DisabledSlots: 4144959,\
      equipment: {\
        chest: {\
          id: 'minecraft:leather_chestplate',\
          count:1b,\
          components: {\
            custom_data: {\
              Tags: [\
                'mad_deleted_item',\
              ],\
            },\
          },\
        },\
      },\
      drop_chances: {\
        head: 0f,\
        chest: 0f,\
        legs: 0f,\
        feet: 0f,\
      },\
      Pose: {\
        Body: [64f, 0f, 0f],\
        Head: [67f, 0f, 292f],\
        LeftArm: [271f, 343f, 0f],\
        RightArm: [265f, 24f, 0f],\
      },\
    }
#### 足
$execute as @e[type=minecraft:marker,tag=mad_player$(victim_number),limit=1] \
  at @s run \
  summon minecraft:armor_stand ~ ~-0.8 ~-1.6 \
    {\
      Tags: [\
        'mad_player$(victim_number)',\
      ],\
      NoGravity: 1b,\
      Invulnerable: 1b,\
      Invisible: 1b,\
      NoBasePlate: 0b,\
      DisabledSlots: 4144959,\
      equipment: {\
        feet: {\
          id: 'minecraft:leather_boots',\
          count: 1b,\
          components: {\
            custom_data: {\
              Tags: [\
                'mad_deleted_item'\
              ],\
            },\
          },\
        },\
        legs:{\
          id: 'minecraft:leather_leggings',\
          count: 1b,\
          components: {\
            custom_data: {\
              Tags: [\
                'mad_deleted_item',\
              ],\
            },\
          },\
        },\
      },\
      drop_chances: {\
        head: 0f,\
        chest: 0f,\
        legs: 0f,\
        feet: 0f,\
      },\
      Pose: {\
        LeftLeg: [66f, 12f, 0f],\
        RightLeg: [68f, 352f, 0f],\
      },\
    }
