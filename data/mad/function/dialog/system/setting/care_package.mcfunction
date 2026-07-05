#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資設定ダイアログ
$dialog show @p[predicate=mad:player/host] \
  {\
    type: 'minecraft:confirmation',\
    title: {\
      translate: '支援物資設定',\
    },\
    inputs: [\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_elytra',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/elytra",\
          },\
          {\
            translate: "item.minecraft.elytra",\
          },\
        ],\
        initial: $(enable_elytra),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_trident',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/trident",\
          },\
          {\
            translate: "item.minecraft.trident",\
          },\
        ],\
        initial: $(enable_trident),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_efficiency_pickaxe',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/diamond_pickaxe",\
          },\
          {\
            translate: "効率強化のダイヤモンドのツルハシ",\
          },\
        ],\
        initial: $(enable_efficiency_pickaxe),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_fortune_pickaxe',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/iron_pickaxe",\
          },\
          {\
            translate: "幸運の鉄のツルハシ",\
          },\
        ],\
        initial: $(enable_fortune_pickaxe),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_armor_upgrader',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/wolf_spawn_egg",\
          },\
          {\
            translate: "防具アップグレードキット",\
          },\
        ],\
        initial: $(enable_armor_upgrader),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_tool_upgrader',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/turtle_spawn_egg",\
          },\
          {\
            translate: "ツールアップグレードキット",\
          },\
        ],\
        initial: $(enable_tool_upgrader),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_emergency_call',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/zombie_horse_spawn_egg",\
          },\
          {\
            translate: "緊急招集",\
          },\
        ],\
        initial: $(enable_emergency_call),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_end_portal_frame',\
        label: [\
          {\
            atlas: "minecraft:blocks",\
            sprite: "minecraft:block/end_portal_frame_top",\
          },\
          {\
            translate: "エンドポータルフレームキット",\
          },\
        ],\
        initial: $(enable_end_portal_frame),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_energy_drink',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/potion",\
          },\
          {\
            translate: "栄養ドリンク",\
          },\
        ],\
        initial: $(enable_energy_drink),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_golden_boots',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/golden_boots",\
          },\
          {\
            translate: "瞬足の金のブーツ",\
          },\
        ],\
        initial: $(enable_golden_boots),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_notice_of_thief',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/rabbit_spawn_egg",\
          },\
          {\
            translate: "怪盗予告",\
          },\
        ],\
        initial: $(enable_notice_of_thief),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_teleport_arrow',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/tipped_arrow_head",\
          },\
          {\
            translate: "どっか行け矢",\
          },\
        ],\
        initial: $(enable_teleport_arrow),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_totem_of_undying',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/totem_of_undying",\
          },\
          {\
            translate: "item.minecraft.totem_of_undying",\
          },\
        ],\
        initial: $(enable_totem_of_undying),\
        on_true: "1",\
        on_false: "0",\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'enable_transmitter',\
        label: [\
          {\
            atlas: "minecraft:items",\
            sprite: "minecraft:item/bat_spawn_egg",\
          },\
          {\
            translate: "発信機",\
          },\
        ],\
        initial: $(enable_transmitter),\
        on_true: "1",\
        on_false: "0",\
      },\
    ],\
    can_close_with_escape: false,\
    after_action: 'close',\
    pause: true,\
    yes: {\
      label: '決定',\
      tooltip: '設定を保存して、戻ります。',\
      action: {\
        type: 'minecraft:dynamic/run_command',\
        template: 'function mad:system/setting/care_package/save {enable_elytra: $(enable_elytra_string), enable_trident: $(enable_trident_string), enable_efficiency_pickaxe: $(enable_efficiency_pickaxe_string), enable_fortune_pickaxe: $(enable_fortune_pickaxe_string), enable_armor_upgrader: $(enable_armor_upgrader_string), enable_tool_upgrader: $(enable_tool_upgrader_string), enable_emergency_call: $(enable_emergency_call_string), enable_end_portal_frame: $(enable_end_portal_frame_string), enable_energy_drink: $(enable_energy_drink_string), enable_golden_boots: $(enable_golden_boots_string), enable_notice_of_thief: $(enable_notice_of_thief_string), enable_teleport_arrow: $(enable_teleport_arrow_string), enable_totem_of_undying: $(enable_totem_of_undying_string), enable_transmitter: $(enable_transmitter_string)}',\
      },\
    },\
    no: {\
      label: 'キャンセル',\
      tooltip: '設定を破棄して、戻ります。',\
      action: {\
        type: 'minecraft:run_command',\
        command: 'trigger ExecuteTrigger set 5',\
      },\
    },\
  }
