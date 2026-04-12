#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## オプション設定ダイアログ
$dialog show @p[predicate=mad:player/host] \
  {\
    type: 'minecraft:confirmation',\
    title: {\
      text: 'オプション設定',\
    },\
    inputs: [\
      {\
        type: 'minecraft:boolean',\
        key: 'advance_weather',\
        label: '天気の更新',\
        initial: $(advance_weather),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'advance_time',\
        label: 'ゲーム内時刻の進行',\
        initial: $(advance_time),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:single_option',\
        key: 'difficulty',\
        label: '難易度',\
        label_visible: true,\
        options: [\
          {\
            id: '0',\
            display: 'ピースフル',\
          },\
          {\
            id: '1',\
            display: 'イージー',\
          },\
          {\
            id: '2',\
            display: 'ノーマル',\
            initial: true,\
          },\
          {\
            id: '3',\
            display: 'ハード',\
          },\
          {\
            id: '4',\
            display: 'ハードコア (復活無し)',\
          },\
        ],\
      },\
      {\
        type: 'minecraft:number_range',\
        key: 'number_of_care_packages',\
        label: '支援物資投下数',\
        start: 1,\
        end: 5,\
        initial: $(number_of_care_packages),\
        label_format: '%1$s: %2$s 個',\
        step: 1,\
      },\
      {\
        type: 'minecraft:number_range',\
        key: 'bonus_time_of_kill',\
        label: '撃破ボーナス',\
        start: 0,\
        end: 1000,\
        initial: $(bonus_time_of_kill),\
        label_format: '%1$s: %2$s 秒',\
        step: 10,\
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
        template: 'function mad:system/setting/option_rules/save {advance_weather: $(advance_weather_string), advance_time: $(advance_time_string), difficulty: $(difficulty_string), number_of_care_packages: $(number_of_care_packages_string), bonus_time_of_kill: $(bonus_time_of_kill_string)}',\
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
