#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージに変数を保持
#### 犠牲者のチームの色
$data modify storage mad: death.victim_color \
  set value '$(color)'
#### 犠牲者のチームのターゲットセレクタ(スコア設定用)
$data modify storage mad: death.victim_address \
  set value '#mad_team_$(team)'
#### 犠牲者のチームのターゲットセレクタ(メッセージ表示用)
$data modify storage mad: death.victim_target_selector \
  set value '@a[predicate=mad:player/team/$(team)]'
#### 犠牲者のチームのサイドバー用スコアボード
$data modify storage mad: death.victim_sidebar \
  set value 'Sidebar$(uppercase)'
