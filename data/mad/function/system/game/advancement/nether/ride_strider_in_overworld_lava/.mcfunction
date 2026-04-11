#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 進捗検出
execute unless predicate mad:phase/not_game_phase as @s[predicate=mad:player/alive/,scores={Advancements_Nether_ride_strider_in_overworld_lava=0}] run function mad:system/game/advancement/nether/ride_strider_in_overworld_lava/branch
