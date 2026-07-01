#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 進捗検出
execute unless predicate mad:phase/not_game_phase \
  as @s[predicate=mad:player/alive/,scores={Advancements_Adventure_bullseye=0}] run \
  function mad:system/game/advancement/adventure/bullseye/branch
