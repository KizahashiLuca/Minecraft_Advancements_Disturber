#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### 加害者チームの色(個人戦では緑色)
$data modify storage mad: death.killer_color \
  set value '$(color)'
#### 加害者チームのターゲットセレクタ(スコア設定用)
$data modify storage mad: death.killer_address \
  set value '#mad_team_$(team)'
#### 加害者チームのターゲットセレクタ(メッセージ表示用)
$data modify storage mad: death.killer_target_selector \
  set value '@a[predicate=mad:player/team/$(team)]'
#### 加害者のチーム表示のJSONの本文タグ(メッセージ表示用)
data modify storage mad: death.message_selector \
  set value 'text'
#### 加害者のチーム表示(メッセージ表示用)
$data modify storage mad: death.killer_name \
  set value '$(text)チーム'
