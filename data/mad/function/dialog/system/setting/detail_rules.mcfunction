#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 詳細設定ダイアログ - 1人
$execute if predicate mad:gamerule/num_of_players/solo run \
  dialog show @p[predicate=mad:player/host] \
    {\
      type: 'minecraft:confirmation',\
      title: {\
        text: '詳細設定',\
      },\
      inputs: [\
        {\
          type: 'minecraft:single_option',\
          key: 'is_team',\
          label: '対戦形式',\
          label_visible: true,\
          options: [\
            {\
              id: '0',\
              display: 'ソロ戦 (変更不可)',\
              initial: true,\
            },\
          ],\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'initial_time',\
          label: '初期時間',\
          start: 1,\
          end: 1000,\
          initial: $(initial_time),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'bonus_time_of_advancements',\
          label: '追加時間',\
          start: 1,\
          end: 1000,\
          initial: $(bonus_time_of_advancements),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'care_package_interval',\
          label: '支援物資間隔',\
          start: 1,\
          end: 1000,\
          initial: $(care_package_interval),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'world_border',\
          label: 'ワールド範囲',\
          start: 100,\
          end: 10000,\
          initial: $(world_border),\
          label_format: '%1$s: %2$s x %2$s ブロック',\
          step: 100,\
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
          template: 'function mad:system/setting/detail_rules/save {is_team: $(is_team_string), initial_time: $(initial_time_string), bonus_time_of_advancements: $(bonus_time_of_advancements_string), care_package_interval: $(care_package_interval_string), world_border: $(world_border_string)}',\
        },\
      },\
      no: {\
        label: 'キャンセル',\
        tooltip: '設定を破棄して、戻ります。',\
        action: {\
          type: 'minecraft:run_command',\
          command: 'trigger ExecuteTrigger set 10',\
        },\
      },\
    }

## 詳細設定ダイアログ - 複数人
#### チーム戦が選択されているとき
$execute if predicate mad:gamerule/match_mode/team \
  if predicate mad:gamerule/num_of_players/not_solo run \
  dialog show @p[predicate=mad:player/host] \
    {\
      type: 'minecraft:confirmation',\
      title: {\
        text: '詳細設定',\
      },\
      inputs: [\
        {\
          type: 'minecraft:single_option',\
          key: 'is_team',\
          label: '対戦形式',\
          label_visible: true,\
          options: [\
            {\
              id: '1',\
              display: 'チーム戦',\
              initial: true\
            },\
            {\
              id: '0',\
              display: '個人戦',\
            },\
          ],\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'initial_time',\
          label: '初期時間',\
          start: 1,\
          end: 1000,\
          initial: $(initial_time),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'bonus_time_of_advancements',\
          label: '追加時間',\
          start: 1,\
          end: 1000,\
          initial: $(bonus_time_of_advancements),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'care_package_interval',\
          label: '支援物資間隔',\
          start: 1,\
          end: 1000,\
          initial: $(care_package_interval),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'world_border',\
          label: 'ワールド範囲',\
          start: 100,\
          end: 10000,\
          initial: $(world_border),\
          label_format: '%1$s: %2$s x %2$s ブロック',\
          step: 100,\
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
          template: 'function mad:system/setting/detail_rules/save {is_team: $(is_team_string), initial_time: $(initial_time_string), bonus_time_of_advancements: $(bonus_time_of_advancements_string), care_package_interval: $(care_package_interval_string), world_border: $(world_border_string)}',\
        },\
      },\
      no: {\
        label: 'キャンセル',\
        tooltip: '設定を破棄して、戻ります。',\
        action: {\
          type: 'minecraft:run_command',\
          command: 'trigger ExecuteTrigger set 10',\
        },\
      },\
    }
#### 個人戦が選択されているとき
$execute if predicate mad:gamerule/match_mode/individual/ \
  if predicate mad:gamerule/num_of_players/not_solo run \
  dialog show @p[predicate=mad:player/host] \
    {\
      type: 'minecraft:confirmation',\
      title: {\
        text: '詳細設定',\
      },\
      inputs: [\
        {\
          type: 'minecraft:single_option',\
          key: 'is_team',\
          label: '対戦形式',\
          label_visible: true,\
          options: [\
            {\
              id: '1',\
              display: 'チーム戦',\
            },\
            {\
              id: '0',\
              display: '個人戦',\
              initial: true\
            },\
          ],\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'initial_time',\
          label: '初期時間',\
          start: 1,\
          end: 1000,\
          initial: $(initial_time),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'bonus_time_of_advancements',\
          label: '追加時間',\
          start: 1,\
          end: 1000,\
          initial: $(bonus_time_of_advancements),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'care_package_interval',\
          label: '支援物資間隔',\
          start: 1,\
          end: 1000,\
          initial: $(care_package_interval),\
          label_format: '%1$s: %2$s 秒',\
          step: 10,\
        },\
        {\
          type: 'minecraft:number_range',\
          key: 'world_border',\
          label: 'ワールド範囲',\
          start: 100,\
          end: 10000,\
          initial: $(world_border),\
          label_format: '%1$s: %2$s x %2$s ブロック',\
          step: 100,\
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
          template: 'function mad:system/setting/detail_rules/save {is_team: $(is_team_string), initial_time: $(initial_time_string), bonus_time_of_advancements: $(bonus_time_of_advancements_string), care_package_interval: $(care_package_interval_string), world_border: $(world_border_string)}',\
        },\
      },\
      no: {\
        label: 'キャンセル',\
        tooltip: '設定を破棄して、戻ります。',\
        action: {\
          type: 'minecraft:run_command',\
          command: 'trigger ExecuteTrigger set 10',\
        },\
      },\
    }
