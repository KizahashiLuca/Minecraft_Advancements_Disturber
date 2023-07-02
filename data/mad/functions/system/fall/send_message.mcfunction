#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send title messages
title @a title ["",{"text":"ゲームスタート","color":"red","bold":false,"italic":false}]
title @a times 20 80 20

## Send messages
tellraw @a ["",{"text":"[試合開始]","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  進捗がリセットされました。","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  PvPは次の日の朝まで15分間禁止されます。","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  敵プレイヤーをキルしてもキル報酬は無く、","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  バナーも生成されません。","color":"green","bold":false,"italic":false}]

## Change to start
function mad:system/game/change_to