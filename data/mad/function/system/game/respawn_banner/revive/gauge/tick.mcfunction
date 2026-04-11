#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時毎秒処理
$execute if entity @p[predicate=mad:player/alive/$(team),predicate=mad:player/alive/on_sneak,distance=..2] as @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}},scores={Tick=..0}] run function mad:system/game/respawn_banner/revive/gauge/second

## 毎ティック処理
$execute as @a[predicate=mad:player/alive/$(team),predicate=mad:player/alive/on_sneak,distance=..2] run scoreboard players remove @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] Tick 1