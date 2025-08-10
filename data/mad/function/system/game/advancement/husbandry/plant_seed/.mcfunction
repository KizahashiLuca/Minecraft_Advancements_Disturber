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
execute as @s[predicate=mad:player/alive/,scores={Advancements_Husbandry_plant_seed=0}] run function mad:system/game/advancement/husbandry/plant_seed/branch
