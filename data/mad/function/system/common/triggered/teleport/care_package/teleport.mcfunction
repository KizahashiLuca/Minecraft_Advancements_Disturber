#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テレポート
#### 投下フラグが降りているときは未投下のため座標にテレポート
$execute if predicate mad:care_package/is_down_flag/$(number) run \
  teleport @s $(x) $(y) $(z)
$execute unless predicate mad:care_package/is_down_flag/$(number) \
  unless entity @e[predicate=mad:care_package/,tag=mad_care_package_$(number),limit=1] run \
    teleport @s $(x) $(y) $(z)
#### 投下フラグが立っているときは投下済のため支援物資にテレポート
$execute unless predicate mad:care_package/is_down_flag/$(number) \
  if entity @e[predicate=mad:care_package/,tag=mad_care_package_$(number),limit=1] run \
    teleport @s @e[predicate=mad:care_package/,tag=mad_care_package_$(number),limit=1]
