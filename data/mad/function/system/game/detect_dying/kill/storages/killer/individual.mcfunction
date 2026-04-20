#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### 加害者の色(個人戦では緑色)
data modify storage mad: death.killer_color \
  set value 'green'
#### 加害者のターゲットセレクタ(スコア設定用)
$data modify storage mad: death.killer_address \
  set value '@p[tag=mad_player$(killer_number)]'
#### 加害者のターゲットセレクタ(メッセージ表示用)
$data modify storage mad: death.killer_target_selector \
  set value '@p[tag=mad_player$(killer_number)]'
#### 加害者の名前表示のJSONの本文タグ(メッセージ表示用)
data modify storage mad: death.message_selector \
  set value 'selector'
#### 加害者の名前表示(メッセージ表示用)
$data modify storage mad: death.killer_name \
  set value '@p[tag=mad_player$(killer_number)]'
