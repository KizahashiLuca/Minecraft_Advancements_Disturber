#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テレポート先座標のストレージ格納
$data modify storage mad: teleport.pos.x \
  set from storage mad: care_package.$(number).x
$data modify storage mad: teleport.pos.y \
  set from storage mad: care_package.$(number).y
$data modify storage mad: teleport.pos.z \
  set from storage mad: care_package.$(number).z
