#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テレポート
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/ \
  as @s[predicate=mad:player/] run \
  function mad:system/game/respawn/teleport \
    with storage mad: individual
#### 赤チーム
execute as @s[predicate=mad:player/team/a] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.a
#### 青チーム
execute as @s[predicate=mad:player/team/b] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.b
#### 黄チーム
execute as @s[predicate=mad:player/team/c] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.c
#### 緑チーム
execute as @s[predicate=mad:player/team/d] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.d
