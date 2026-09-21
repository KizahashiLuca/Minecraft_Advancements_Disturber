#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 投下時にウェイポイントの表示を変更
#### 色
$waypoint modify @e[predicate=mad:care_package/armor_stand,tag=mad_care_package_$(number),limit=1] color gold
#### スタイル
$waypoint modify @e[predicate=mad:care_package/armor_stand,tag=mad_care_package_$(number),limit=1] style set minecraft:bowtie
