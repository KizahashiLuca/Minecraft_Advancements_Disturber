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
        key: 'WeatherCycle',\
        label: '天気サイクル',\
        initial: $(WeatherCycle),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'DaylightCycle',\
        label: '昼夜サイクル',\
        initial: $(DaylightCycle),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:single_option',\
        key: 'Difficulty',\
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
        key: 'NumberOfCarePackages',\
        label: '支援物資投下数',\
        start: 1,\
        end: 5,\
        initial: $(NumberOfCarePackages),\
        label_format: '%1$s: %2$s 個',\
        step: 1,\
      },\
      {\
        type: 'minecraft:number_range',\
        key: 'BonusTimeOfKill',\
        label: '撃破ボーナス',\
        start: 0,\
        end: 1000,\
        initial: $(BonusTimeOfKill),\
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
        template: 'function mad:system/setting/option_rules/save {WeatherCycle: $(WeatherCycleString), DaylightCycle: $(DaylightCycleString), Difficulty: $(DifficultyString), NumberOfCarePackages: $(NumberOfCarePackagesString), BonusTimeOfKill: $(BonusTimeOfKillString)}',\
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
