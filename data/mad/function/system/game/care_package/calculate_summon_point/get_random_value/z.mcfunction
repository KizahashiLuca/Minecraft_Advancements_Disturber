#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 乱数値出力(相対座標)
$execute store result score #mad TmpZ run \
  random value $(z_north)..$(z_south)
return run \
  scoreboard players get #mad TmpZ
