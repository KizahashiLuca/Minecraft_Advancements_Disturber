#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send title messages
title @a title ['',{text:'ゲームスタート',color:'red'}]
title @a times 20 80 20

## Send messages
tellraw @a ['',{text:'[試合開始] 進捗はリセットされました',color:'green'}]

## Change to start
function mad:system/game/change_to