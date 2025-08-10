#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 帰還ポータル設置
fill ~-1 ~-1 ~ ~1 ~-1 ~ minecraft:bedrock
fill ~ ~-1 ~-1 ~ ~-1 ~1 minecraft:bedrock
setblock ~ ~-2 ~ minecraft:bedrock
setblock ~ ~-1 ~ minecraft:end_portal

## メッセージ表示
function mad:message/item/return_portal/construct