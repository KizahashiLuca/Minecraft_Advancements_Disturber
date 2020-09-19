#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Send messages
execute if score #mad friendlyFire matches 0 run tellraw @a ["",{"text":"[初期設定] フレンドリーファイアは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad friendlyFire matches 1 run tellraw @a ["",{"text":"[初期設定] フレンドリーファイアは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mad collisionRule matches 0 run tellraw @a ["",{"text":"[初期設定] 当たり判定は ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad collisionRule matches 1 run tellraw @a ["",{"text":"[初期設定] 当たり判定は ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mad VisibleName matches 0 run tellraw @a ["",{"text":"[初期設定] ネームタグ表示は ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad VisibleName matches 1 run tellraw @a ["",{"text":"[初期設定] ネームタグ表示は ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mad VisibleInvis matches 0 run tellraw @a ["",{"text":"[初期設定] 透明可視化は ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad VisibleInvis matches 1 run tellraw @a ["",{"text":"[初期設定] 透明可視化は ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mad VisibleDeath matches 0 run tellraw @a ["",{"text":"[初期設定] 死亡メッセージは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad VisibleDeath matches 1 run tellraw @a ["",{"text":"[初期設定] 死亡メッセージは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mad SetTeamManual matches 0 run tellraw @a ["",{"text":"[初期設定] チームメンバー選択は ","color":"green"},{"text":"ランダム","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad SetTeamManual matches 1 run tellraw @a ["",{"text":"[初期設定] チームメンバー選択は ","color":"green"},{"text":"手動","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

tellraw @a ["",{"text":"[初期設定] チーム数は ","color":"green"},{"score":{"name":"#mad","objective":"TeamNumber"},"color":"green","bold":true},{"text":" チームに設定されました。","color":"green"}]

## Change to choose setting
function mad:system/setting/choose_setting/change_to