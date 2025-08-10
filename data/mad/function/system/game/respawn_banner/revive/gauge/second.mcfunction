#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時毎秒処理
scoreboard players remove @s Second 1

## ゲージ表示
execute as @s[scores={Second=14..2147483647}] run function mad:message/game/respawn_banner/gauge/red
execute as @s[scores={Second=8..13}] run function mad:message/game/respawn_banner/gauge/yellow
execute as @s[scores={Second=-1..7}] run function mad:message/game/respawn_banner/gauge/green
