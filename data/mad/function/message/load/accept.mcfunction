#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 参加人数 制限内用 メッセージ
tellraw @a ['',{text:'  以下をクリックしてゲームを開始できます。'}]

## ソロ戦
execute if predicate mad:gamerule/num_of_players/solo run \
tellraw @a ['',{translate:'     >> %s',with:[{text:'ソロ戦',color:'green',bold:true,underlined:true,hover_event:{action:'show_text',value:'クリックしてソロ戦開始'},click_event:{action:'run_command',command:'function mad:system/start/ {type:\'solo\'}'}}]}]

## 個人/チーム戦
execute if predicate mad:gamerule/num_of_players/not_solo run \
tellraw @a ['',{translate:'     >> %s',with:[{text:'個人戦',color:'green',bold:true,underlined:true,hover_event:{action:'show_text',value:'クリックして個人戦開始'},click_event:{action:'run_command',command:'function mad:system/start/ {type:\'individual\'}'}}]}]

execute if predicate mad:gamerule/num_of_players/not_solo run \
tellraw @a ['',{translate:'     >> %s',with:[{text:'チーム戦',color:'green',bold:true,underlined:true,hover_event:{action:'show_text',value:'クリックして2チーム戦開始'},click_event:{action:'run_command',command:'function mad:system/start/ {type:\'team\'}'}}]}]

tellraw @a ['',{translate:'     ※ 詳細設定してのゲーム開始は %s',with:[{text:'こちら',color:'light_purple',bold:true,underlined:true,hover_event:{action:'show_text',value:'クリックして詳細設定開始'},click_event:{action:'run_command',command:'function mad:system/start/ {type:\'details\'}'}}]}]