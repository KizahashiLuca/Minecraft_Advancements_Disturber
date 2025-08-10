#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時毎秒処理
$execute if entity @p[name=$(name)] as @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}},scores={Tick=..0}] run function mad:system/game/respawn_banner/revive/gauge/second

## 毎ティック処理
$execute if entity @p[name=$(name),predicate=mad:player/team/a] as @a[predicate=mad:player/alive/a,predicate=mad:player/alive/on_sneak,distance=..2] run scoreboard players remove @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] Tick 1
$execute if entity @p[name=$(name),predicate=mad:player/team/b] as @a[predicate=mad:player/alive/b,predicate=mad:player/alive/on_sneak,distance=..2] run scoreboard players remove @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] Tick 1
$execute if entity @p[name=$(name),predicate=mad:player/team/c] as @a[predicate=mad:player/alive/c,predicate=mad:player/alive/on_sneak,distance=..2] run scoreboard players remove @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] Tick 1
$execute if entity @p[name=$(name),predicate=mad:player/team/d] as @a[predicate=mad:player/alive/d,predicate=mad:player/alive/on_sneak,distance=..2] run scoreboard players remove @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] Tick 1
$scoreboard players add @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}},scores={Tick=..-1}] Tick 20
