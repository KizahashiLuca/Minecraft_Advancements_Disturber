#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 共通開始メッセージ表示
function mad:message/begin

## ゲーム開始拒否メッセージ表示
tellraw @a ['',{text:'  既にゲームを実施しています。',color:'yellow'}]
tellraw @a ['',{text:'  新しいゲームを開始できません。'}]
tellraw @a ['',{text:'  以下をクリックしてゲームを中断できます。'}]
tellraw @a ['',{translate:'     >> %s',with:[{text:'ゲーム中断',color:'red',bold:true,underlined:true,hover_event:{action:'show_text',value:'クリックしてゲーム中断'},click_event:{action:'run_command',command:'/function mad:stop'}}]}]

## 共通終了メッセージ表示
function mad:message/end