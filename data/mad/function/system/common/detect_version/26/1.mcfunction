#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
scoreboard players set #mad MajorVersion 26
scoreboard players set #mad MinorVersion 1
scoreboard players set #mad PatchVersion 0
execute if predicate mad:version/26.1/0 run \
  scoreboard players set #mad PatchVersion 0
execute if predicate mad:version/26.1/1 run \
  scoreboard players set #mad PatchVersion 1
execute if predicate mad:version/26.1/2 run \
  scoreboard players set #mad PatchVersion 2
