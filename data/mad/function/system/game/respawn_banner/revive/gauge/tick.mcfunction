#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時に秒数計算 - 1秒減算
#### 蘇生検知用アーマースタンドの周囲2m以内に、スニーク中かつ同じチームの生存者が
#### いたら、蘇生検知用アーマースタンドの秒数を1秒減算
$execute if entity @p[predicate=mad:player/alive/$(team),predicate=mad:player/alive/on_sneak,distance=..2] \
  as @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}},scores={Tick=..0}] run \
  function mad:system/game/respawn_banner/revive/gauge/second

## 1ティック減算
$execute as @a[predicate=mad:player/alive/$(team),predicate=mad:player/alive/on_sneak,distance=..2] run \
  scoreboard players remove @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] Tick 1
#### 0ティック未満の場合、20ティックを加算
$execute as @a[predicate=mad:player/alive/$(team),predicate=mad:player/alive/on_sneak,distance=..2] run \
  scoreboard players add @e[predicate=mad:respawn_banner/armor_stand/initialized,nbt={data:{name:'$(name)'}}] Tick 20
