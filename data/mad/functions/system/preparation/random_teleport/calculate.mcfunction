#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate
scoreboard players set #mad RandomCount 10
function mad:system/random_generator/randomizing
scoreboard players operation #mad RandomAnswer %= #mad 2

## 1 : Minus, 0 : Plus
scoreboard players operation @s PlusMinus = #mad RandomAnswer

scoreboard players set #mad RandomCount 10
function mad:system/random_generator/randomizing
scoreboard players operation #mad RandomAnswer %= #mad WorldBorder
scoreboard players operation @s 100_meter = #mad RandomAnswer

scoreboard players operation @s 10_meter = @s 100_meter
scoreboard players operation @s 100_meter /= #mad 100_meter
scoreboard players operation @s 10_meter %= #mad 100_meter

scoreboard players operation @s 1_meter = @s 10_meter
scoreboard players operation @s 10_meter /= #mad 10_meter
scoreboard players operation @s 1_meter %= #mad 10_meter