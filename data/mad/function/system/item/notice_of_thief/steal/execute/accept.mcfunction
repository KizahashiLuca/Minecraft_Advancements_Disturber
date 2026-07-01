#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗処理
#### 怪盗で得たアイテムを、怪盗予告したプレイヤーの地点に召喚
#### (怪盗予告したプレイヤーのインベントリがいっぱいの可能性があるため)
$execute at @p[tag=mad_player$(thief_number)] run \
  summon minecraft:item ~ ~ ~ \
    {\
      Item: {\
        id: '$(id)',\
        count: $(count),\
        components: $(components),\
      },\
      PickupDelay: 0s,\
    }
#### 怪盗で盗まれたアイテムのインベントリを空気で置換
$item replace entity @p[tag=mad_player$(victim_number)] hotbar.$(Slot) \
  with minecraft:air

## サウンドイベント
$execute as @p[tag=mad_player$(thief_number)] \
  at @s run \
  playsound minecraft:entity.allay.ambient_with_item block @a ~ ~ ~ 1.0 1.0 1.0
$execute as @p[tag=mad_player$(victim_number)] \
  at @s run \
  playsound minecraft:entity.allay.hurt block @a ~ ~ ~ 1.0 1.0 1.0

## メッセージ表示
function mad:message/item/notice_of_thief/accept \
  with storage mad: item.notice_of_thief.tmp
