#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー - マーカー召喚
$execute in $(dimension) run summon minecraft:marker $(absolute_x) $(absolute_y) $(absolute_z) {Tags:['MAD_DeathPoint','MAD_Player$(victim_number)'],NoGravity:1b,Invulnerable:1b}