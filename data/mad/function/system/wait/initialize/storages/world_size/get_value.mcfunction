#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 乱数値出力
$scoreboard players set #mad Tmp$(axis) $(center)
$scoreboard players operation #mad Tmp$(axis) += #mad Pos$(axis)
$return run \
  scoreboard players get #mad Tmp$(axis)
