#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send title messages
title @a title ['',{text:'ゲームスタート',color:'red'}]
title @a times 20 80 20

## Send messages
tellraw @a ['',{text:'[試合開始] 進捗はリセットされました',color:'green'}]

## Change to start
function mad:system/game/change_to