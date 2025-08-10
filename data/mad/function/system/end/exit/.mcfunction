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

## 勝者確定メッセージ表示
execute if predicate mad:system/end/winner/one run function mad:message/end/winner/one
execute if predicate mad:system/end/winner/draw run function mad:message/end/winner/none
execute if predicate mad:system/end/winner/ run function mad:system/end/exit/winner

## 統計メッセージ表示
function mad:system/end/statics

## 共通終了メッセージ表示
function mad:message/end

## ゲーム終了
function mad:system/reset/