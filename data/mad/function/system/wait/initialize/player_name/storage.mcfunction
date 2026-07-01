#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号とプレイヤー名を紐づけ
$data modify storage mad: player.$(tmp).number \
  set value $(tmp)
$data modify storage mad: player.$(tmp).name \
  set from entity @s EnderItems[0].components.'minecraft:profile'.name

## チーム戦の場合チームも紐づけ
#### 赤チーム
$execute as @s[predicate=mad:player/team/a] run \
  data modify storage mad: player.$(tmp).team \
    set value 'a'
#### 青チーム
$execute as @s[predicate=mad:player/team/b] run \
  data modify storage mad: player.$(tmp).team \
    set value 'b'
#### 黄チーム
$execute as @s[predicate=mad:player/team/c] run \
  data modify storage mad: player.$(tmp).team \
    set value 'c'
#### 緑チーム
$execute as @s[predicate=mad:player/team/d] run \
  data modify storage mad: player.$(tmp).team \
    set value 'd'
