#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
tellraw @a ["",{"translate":"[物資投下] 物資が %s 秒後に","with":[{"score":{"name":"#mad","objective":"CartInterval"}}],"color":"green","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"text":"320"},{"score":{"name":"@s","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportMinecart set 1"},"color":"green","bold":false,"italic":false},{"text":" に投下されます。","color":"green","bold":false,"italic":false}]

## Set scoreboard sidebar
scoreboard objectives setdisplay sidebar SecondSummon

## Remove a tag
tag @s remove MAD_NotSayNextMinecart