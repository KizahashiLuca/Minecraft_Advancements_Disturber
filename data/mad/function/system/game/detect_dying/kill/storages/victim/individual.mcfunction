#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージに変数を保持
#### 犠牲者の色(個人戦では緑色)
data modify storage mad: death.victim_color \
  set value 'green'
#### 犠牲者のターゲットセレクタ(スコア設定用)
$data modify storage mad: death.victim_address \
  set value '@p[tag=mad_player$(victim_number)]'
#### 犠牲者のターゲットセレクタ(メッセージ表示用)
$data modify storage mad: death.victim_target_selector \
  set value '@p[tag=mad_player$(victim_number)]'
