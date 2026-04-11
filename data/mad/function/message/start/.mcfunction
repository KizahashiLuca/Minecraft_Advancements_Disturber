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

## 初期設定開始メッセージ表示
tellraw @a ['',{text:'  Thank you for Downloading!'}]
tellraw @a ['',{text:'---------------------------------'}]
tellraw @a ['',{translate:'  %s は',with:[{selector:'@p[predicate=mad:player/host]',color:'green',bold:true}]}]
tellraw @a ['',{text:'  初期設定を開始してください'}]

## 共通終了メッセージ表示
function mad:message/end