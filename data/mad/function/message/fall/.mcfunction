#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 共通開始メッセージ表示
function mad:message/begin

## 降下開始メッセージ表示
tellraw @a ['',{text:'  降下を開始します'}]
tellraw @a ['',{text:'---------------------------------'}]
tellraw @a ['',{text:'  中心座標 : '},{translate:'[%s, %s, %s]',with:[{nbt:'world_spawn.overworld.x',storage:'mad:'},{nbt:'world_spawn.overworld.y',storage:'mad:'},{nbt:'world_spawn.overworld.z',storage:'mad:'}],hover_event:{action:'show_text',value:{text:'スペクテイター時、\nクリックでテレポート'}},click_event:{action:'run_command',command:'/trigger TeleportTrigger set 100'},color:'green'}]
tellraw @a ['',{text:'  初期時間 : '},{translate:'%s 秒',with:[{nbt:'rules.initial_time',storage:'mad:'}],color:'green'}]
tellraw @a ['',{text:'  追加時間 : '},{translate:'%s 秒',with:[{nbt:'rules.bonus_time_of_advancements',storage:'mad:'}],color:'green'}]
tellraw @a ['',{text:'  支援物資間隔 : '},{translate:'%s 秒',with:[{nbt:'rules.care_package_interval',storage:'mad:'}],color:'green'}]
tellraw @a ['',{text:'  ワールド範囲 : '},{translate:'%s x %s',with:[{nbt:'rules.world_border',storage:'mad:'},{nbt:'rules.world_border',storage:'mad:'}],color:'green'}]

## 共通終了メッセージ表示
function mad:message/end