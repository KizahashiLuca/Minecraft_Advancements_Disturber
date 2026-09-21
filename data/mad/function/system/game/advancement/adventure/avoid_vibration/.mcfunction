#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 進捗検出
execute unless predicate mad:phase/not_game_phase \
  as @s[predicate=mad:player/alive/,scores={Advancements_Adventure_avoid_vibration=0}] run \
  function mad:system/game/advancement/adventure/avoid_vibration/branch
