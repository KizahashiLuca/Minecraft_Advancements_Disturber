#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージに殺害時の状況を保持
#### 加害者のターゲットセレクタ(メッセージ表示用)
$data modify storage mad: death.killer \
  set value '@p[tag=mad_player$(killer_number)]'
#### 加害者のプレイヤー番号
$data modify storage mad: death.killer_number \
  set value $(killer_number)
#### 加害者のチーム番号(メッセージ表示用)
$execute as @p[tag=mad_player$(killer_number),predicate=mad:player/team/a] run \
  data modify storage mad: death.killer_team \
    set value 'a'
$execute as @p[tag=mad_player$(killer_number),predicate=mad:player/team/b] run \
  data modify storage mad: death.killer_team \
    set value 'b'
$execute as @p[tag=mad_player$(killer_number),predicate=mad:player/team/c] run \
  data modify storage mad: death.killer_team \
    set value 'c'
$execute as @p[tag=mad_player$(killer_number),predicate=mad:player/team/d] run \
  data modify storage mad: death.killer_team \
    set value 'd'
