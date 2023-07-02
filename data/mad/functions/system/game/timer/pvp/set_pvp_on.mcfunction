#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad PvP 1

## Playsound
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1 1

## Send messages
tellraw @a ["",{"text":"[PvP解禁]","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  PvPが解禁されました。","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  敵プレイヤーをキルするとキル報酬があり、","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  バナーも生成されます。","color":"green","bold":false,"italic":false}]