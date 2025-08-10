#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 進捗検出
execute unless predicate mad:phase/not_game_phase as @s[predicate=mad:player/alive/,scores={Advancements_Original_obtain_sponge=0}] run function mad:system/game/advancement/original/obtain_sponge/branch
