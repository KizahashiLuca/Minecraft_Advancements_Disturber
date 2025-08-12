#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー - マーカー召喚
$execute in $(dimension) run summon minecraft:marker $(absolute_x) $(absolute_y) $(absolute_z) {Tags:['MAD_DeathPoint','MAD_Player$(victim_number)'],NoGravity:1b,Invulnerable:1b}