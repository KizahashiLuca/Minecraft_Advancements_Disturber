#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
$tellraw @s ['',{translate:'[発 信 機]  %s が $(dimension) [$(x), $(y), $(z)] にいます。',with:[{selector:'@p[tag=MAD_Player$(player_number)]'}],color:'green'}]