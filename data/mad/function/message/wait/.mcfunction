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

## 待機開始メッセージ表示
tellraw @a ['',{text:'  設定情報を確認してください'}]

## 共通終了メッセージ表示
function mad:message/end