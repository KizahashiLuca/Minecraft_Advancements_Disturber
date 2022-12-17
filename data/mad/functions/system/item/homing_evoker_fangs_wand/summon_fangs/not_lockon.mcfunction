#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Play sound
playsound minecraft:item.book.put player @a ~ ~ ~ 1.0 1.0

## Send message
tellraw @s ["",{"text":"[エヴォーカーの牙の杖] 誰かをロックオンしなければ使えません。","color":"green"}]