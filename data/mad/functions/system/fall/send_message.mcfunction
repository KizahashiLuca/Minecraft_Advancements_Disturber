#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send title messages
title @a title ["",{"text":"ゲームスタート","color":"red","bold":false,"italic":false}]
title @a times 20 80 20

## Send messages
tellraw @a ["",{"text":"[試合開始] 進捗がリセットされました。","color":"green","bold":false,"italic":false}]

## Change to start
function mad:system/game/change_to