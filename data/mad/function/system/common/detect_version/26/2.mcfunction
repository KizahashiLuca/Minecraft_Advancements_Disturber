#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## MCVersion   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
scoreboard players set #mad MajorVersion 26
scoreboard players set #mad MinorVersion 2
scoreboard players set #mad PatchVersion 0
execute if predicate mad:version/26.2/0 run \
  scoreboard players set #mad PatchVersion 0
# execute if predicate mad:version/26.2/1 run \
#   scoreboard players set #mad PatchVersion 1
