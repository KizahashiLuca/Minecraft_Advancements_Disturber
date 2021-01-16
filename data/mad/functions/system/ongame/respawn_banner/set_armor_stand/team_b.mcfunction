#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set armor stand
summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DisabledSlots:63,ShowArms:1b,CustomName:'{"text":"リスポーンバナー"}',CustomNameVisible:1b,Tags:["RespawnBanner","NotSetCloud"],Team:"TeamB"}
replaceitem block ~ ~ ~ container.13 minecraft:blue_banner