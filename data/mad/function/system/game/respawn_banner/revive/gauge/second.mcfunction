#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
scoreboard players remove @s Second 1

## ゲージ表示
execute as @s[scores={Second=14..2147483647}] run \
  function mad:message/game/respawn_banner/gauge/red
execute as @s[scores={Second=8..13}] run \
  function mad:message/game/respawn_banner/gauge/yellow
execute as @s[scores={Second=-1..7}] run \
  function mad:message/game/respawn_banner/gauge/green
