#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send title messages
title @a title ["",{"text":"ゲームスタート","color":"red","bold":false,"italic":false}]
title @a times 20 80 20

## Send messages
tellraw @a ["",{"text":"[試合開始] 進捗がリセットされました。","color":"green","bold":false,"italic":false}]

## Change to start
function mad:system/game/change_to