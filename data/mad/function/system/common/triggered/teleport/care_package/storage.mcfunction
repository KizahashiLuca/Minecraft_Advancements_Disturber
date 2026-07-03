#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テレポート先支援物資の座標のストレージに格納
$data modify storage mad: teleport.care_package.x \
  set from storage mad: care_package.$(number).absolute_x
$data modify storage mad: teleport.care_package.y \
  set from storage mad: care_package.$(number).y
$data modify storage mad: teleport.care_package.z \
  set from storage mad: care_package.$(number).absolute_z
