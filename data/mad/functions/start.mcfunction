#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## コマンド上限のゲームルールを最大数に設定
gamerule maxCommandChainLength 65536
gamerule maxCommandForkCount 65536

## 共通開始メッセージ表示
function mad:message/begin

## マインクラフトバージョン検出
function mad:system/detect_version

## 共通終了メッセージ表示
function mad:message/end