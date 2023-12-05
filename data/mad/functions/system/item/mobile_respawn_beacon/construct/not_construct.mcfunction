#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
tellraw @a[distance=..5] ["",{"text":"[モバイルリスポーンビーコン] モバイルリスポーンビーコンは Y=-59 以上かつ、縦横3x3マス 高さ2マスの空きがある場所でののみ設置可能です。","color":"green","bold":false,"italic":false}]

## Spawn item
loot spawn ~ ~ ~ loot mad:system/game/minecart/items/mobile_respawn_beacon

## Kill armor stand
kill @s