#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Setblock magma block
setblock ~ ~ ~ minecraft:magma_block
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["LavawalkerMagma"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:41}