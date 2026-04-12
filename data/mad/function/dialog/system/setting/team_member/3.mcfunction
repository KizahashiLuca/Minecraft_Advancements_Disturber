#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム編成マニュアル設定ダイアログ - 3人の場合、ホスト以外
dialog show @s[predicate=mad:player/,predicate=!mad:player/host] \
  {\
    type: 'minecraft:confirmation',\
    title: {\
      text: 'チーム編成のマニュアル設定',\
    },\
    body: [\
      {\
        type: 'minecraft:plain_message',\
        contents: '自分のチームを選択してください',\
      },\
    ],\
    inputs: [\
      {\
        type: 'minecraft:single_option',\
        key: 'MyTeam',\
        label: 'チーム',\
        label_visible: true,\
        options: [\
          {\
            id: '10',\
            display: {\
              text: '未選択',\
              color: 'white',\
            },\
          },\
          {\
            id: '11',\
            display: {\
              text: '赤チーム',\
              color: 'red',\
            },\
          },\
          {\
            id: '12',\
            display: {\
              text: '青チーム',\
              color: 'blue',\
            },\
          },\
          {\
            id: '13',\
            display: {\
              text: '黄チーム',\
              color: 'yellow',\
            },\
          },\
        ],\
      },\
    ],\
    can_close_with_escape: false,\
    after_action: 'close',\
    pause: true,\
    yes: {\
      label: 'チーム設定',\
      tooltip: '設定を保存して\nダイアログを閉じます。',\
      action: {\
        type: 'minecraft:dynamic/run_command',\
        template: 'trigger SetTeamTrigger set $(MyTeam)',\
      },\
    },\
    no: {\
      label: 'キャンセル',\
      tooltip: '設定を破棄して\nダイアログを閉じます。',\
    },\
  }

## チーム編成マニュアル設定ダイアログ - 3人の場合、ホスト
dialog show @s[predicate=mad:player/host] \
  {\
    type: 'minecraft:multi_action',\
    title: {\
      text: 'チーム編成のマニュアル設定',\
    },\
    body: [\
      {\
        type: 'minecraft:plain_message',\
        contents: '自分のチームを選択してください',\
      },\
    ],\
    inputs: [\
      {\
        type: 'minecraft:single_option',\
        key: 'MyTeam',\
        label: 'チーム',\
        label_visible: true,\
        options: [\
          {\
            id: '10',\
            display: {\
              text: '未選択',\
              color: 'white',\
            },\
          },\
          {\
            id: '11',\
            display: {\
              text: '赤チーム',\
              color: 'red',\
            },\
          },\
          {\
            id: '12',\
            display: {\
              text: '青チーム',\
              color: 'blue',\
            },\
          },\
          {\
            id: '13',\
            display: {\
              text: '黄チーム',\
              color: 'yellow',\
            },\
          },\
        ],\
      },\
    ],\
    actions: [\
      {\
        label: 'チーム設定',\
        tooltip: '設定を保存して\nダイアログを閉じます。',\
        action: {\
          type: 'minecraft:dynamic/run_command',\
          template: 'trigger SetTeamTrigger set $(MyTeam)',\
        },\
      }\
    ],\
    can_close_with_escape: false,\
    after_action: 'close',\
    pause: true,\
    exit_action: {\
      label: 'ゲーム開始',\
      action: {\
        type: 'minecraft:run_command',\
        command: 'trigger ExecuteTrigger set 20',\
      },\
    },\
  }
