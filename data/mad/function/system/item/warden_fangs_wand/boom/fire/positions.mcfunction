#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納 - 発射場所と発射方向
data modify storage mad: item.warden_fangs_wand.tmp.boom.posX set from entity @s Pos[0]
data modify storage mad: item.warden_fangs_wand.tmp.boom.posY set from entity @s Pos[1]
data modify storage mad: item.warden_fangs_wand.tmp.boom.posZ set from entity @s Pos[2]
data modify storage mad: item.warden_fangs_wand.tmp.boom.rotY set from entity @s Rotation[0]
data modify storage mad: item.warden_fangs_wand.tmp.boom.rotP set from entity @s Rotation[1]