#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 乱数値出力
$execute store result score #mad Tmp$(axis) run random value $(min)..$(max)
$scoreboard players operation #mad Tmp$(axis) += #mad Pos$(axis)
$return run scoreboard players get #mad Tmp$(axis)