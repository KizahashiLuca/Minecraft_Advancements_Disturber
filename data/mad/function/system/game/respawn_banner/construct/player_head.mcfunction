#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー本体
#### プレイヤーの頭を頭部に付けたアーマースタンドがドロップする
#### プレイヤーの頭を配置
$setblock ~ ~ ~ minecraft:player_head[rotation=6]\
  {\
    profile: {\
      name: '$(victim_id)',\
    },\
    custom_name: '$(victim_id)のリスポーンバナー',\
    components: {\
      item_name: '$(victim_id)のリスポーンバナー',\
      damage_resistant: {\
        types: '#mad:for_player_head',\
      },\
      entity_data: {\
        id: 'minecraft:armor_stand',\
        equipment: {\
          head: {\
            id: 'minecraft:player_head',\
            components: {\
              profile: {\
                name: '$(victim_id)',\
              },\
              enchantments: {\
                'minecraft:vanishing_curse': 1,\
              },\
            },\
          },\
        },\
        data: {\
          Tags: [\
            'mad_respawn_banner',\
            'mad_player$(victim_number)',\
          ],\
        },\
        DisabledSlots: 4144959,\
      },\
      custom_data: {\
        Tags: [\
          'mad_respawn_banner',\
          'mad_player$(victim_number)',\
        ],\
        name: '$(victim_id)',\
      },\
    },\
  } \
  replace
