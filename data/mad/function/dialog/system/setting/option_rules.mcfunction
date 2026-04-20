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
        on_true: 'true',\
        on_false: 'false',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'advance_time',\
        label: 'ゲーム内時刻の進行',\
        initial: $(advance_time),\
        on_true: 'true',\
        on_false: 'false',\
      },\
      {\
        type: 'minecraft:single_option',\
        key: 'difficulty',\
        label: '難易度',\
        label_visible: true,\
        options: [\
          {\
            id: 'peaceful',\
            display: 'ピースフル',\
          },\
          {\
            id: 'easy',\
            display: 'イージー',\
          },\
          {\
            id: 'normal',\
            display: 'ノーマル',\
            initial: true,\
          },\
          {\
            id: 'hard',\
            display: 'ハード',\
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
      {\
        type: 'minecraft:number_range',\
        key: 'death_penalty_time',\
        label: '死亡ペナルティ時間',\
        start: 0,\
        end: 1000,\
        initial: $(death_penalty_time),\
        label_format: '%1$s: %2$s 秒',\
        step: 1,\
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
        template: 'function mad:system/setting/option_rules/save {advance_weather: \'$(advance_weather_string)\', advance_time: \'$(advance_time_string)\', difficulty: \'$(difficulty_string)\', number_of_care_packages: $(number_of_care_packages_string), bonus_time_of_kill: $(bonus_time_of_kill_string), death_penalty_time: $(death_penalty_time_string)}',\
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
