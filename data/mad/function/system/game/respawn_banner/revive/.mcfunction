#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 描画
#### パーティクル
particle minecraft:dust{color:16711680,scale:1} ^ ^ ^2 0 0 0 0.5 1 force @a
particle minecraft:dust{color:16711680,scale:1} ^ ^ ^-2 0 0 0 0.5 1 force @a
particle minecraft:dust{color:16711680,scale:1} ^2 ^ ^ 0 0 0 0.5 1 force @a
particle minecraft:dust{color:16711680,scale:1} ^-2 ^ ^ 0 0 0 0.5 1 force @a
#### 回転
rotate @s ~5 ~

## タイトル
$execute unless entity @p[predicate=mad:player/alive/on_sneak,distance=..2] run \
  function mad:message/game/respawn_banner/title \
    {\
      name: '$(name)',\
    }

## 蘇生検知
#### 周囲2m以内に、同チームかつスニークしている生存者がいれば、
#### 蘇生のカウントが進む(タイマーが減る)
$execute if entity @p[predicate=mad:player/alive/on_sneak,distance=..2] run \
  function mad:system/game/respawn_banner/revive/gauge/ \
    {\
      name: '$(name)',\
    }

## 蘇生処理
#### 20秒の蘇生カウントが済んだら、蘇生対象を復活させる
$execute if score @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}},limit=1] Second matches ..-1 run \
  function mad:system/game/respawn_banner/revive/finalize \
    {\
      name: '$(name)',\
    }

## 張りぼてアーマースタンド破壊検知
#### 設置されたリスポーンビーコン(アーマースタンド)を削除
$execute unless entity @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] run \
  kill @s
