#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Respawn player
tp @s @e[predicate=mad:system/common/respawn_beacon/detect_respawn_banner,limit=1]

## Set gamemode
gamemode survival @s

## Clear inventory
clear @s

## Grant advancement
execute as @s[predicate=mad:player/team/a] run advancement grant @p[predicate=mad:player/alive/a,sort=nearest] only mad:originals/friendship
execute as @s[predicate=mad:player/team/b] run advancement grant @p[predicate=mad:player/alive/b,sort=nearest] only mad:originals/friendship
execute as @s[predicate=mad:player/team/c] run advancement grant @p[predicate=mad:player/alive/c,sort=nearest] only mad:originals/friendship
execute as @s[predicate=mad:player/team/d] run advancement grant @p[predicate=mad:player/alive/d,sort=nearest] only mad:originals/friendship
execute as @s[predicate=mad:player/team/e] run advancement grant @p[predicate=mad:player/alive/e,sort=nearest] only mad:originals/friendship

## Set scoreboards
scoreboard players set @s Phase 21
scoreboard players set @s Death 0
scoreboard players set @s SetRespawnBanner 0
scoreboard players reset @s BeaconNumber

## Send messages
execute as @s[predicate=mad:player/team/a] run tellraw @a[predicate=mad:player/team/a] ["",{"text":"[蘇生措置]  ","color":"green","bold":false,"italic":false},{"selector":"@s","bold":false,"italic":false},{"text":" がリスポーンしました。","color":"green","bold":false,"italic":false}]
execute as @s[predicate=mad:player/team/b] run tellraw @a[predicate=mad:player/team/b] ["",{"text":"[蘇生措置]  ","color":"green","bold":false,"italic":false},{"selector":"@s","bold":false,"italic":false},{"text":" がリスポーンしました。","color":"green","bold":false,"italic":false}]
execute as @s[predicate=mad:player/team/c] run tellraw @a[predicate=mad:player/team/c] ["",{"text":"[蘇生措置]  ","color":"green","bold":false,"italic":false},{"selector":"@s","bold":false,"italic":false},{"text":" がリスポーンしました。","color":"green","bold":false,"italic":false}]
execute as @s[predicate=mad:player/team/d] run tellraw @a[predicate=mad:player/team/d] ["",{"text":"[蘇生措置]  ","color":"green","bold":false,"italic":false},{"selector":"@s","bold":false,"italic":false},{"text":" がリスポーンしました。","color":"green","bold":false,"italic":false}]
execute as @s[predicate=mad:player/team/e] run tellraw @a[predicate=mad:player/team/e] ["",{"text":"[蘇生措置]  ","color":"green","bold":false,"italic":false},{"selector":"@s","bold":false,"italic":false},{"text":" がリスポーンしました。","color":"green","bold":false,"italic":false}]

## Remove tags
tag @s remove MAD_RespawnPlayer
tag @s remove MAD_SetRespawnPlayer