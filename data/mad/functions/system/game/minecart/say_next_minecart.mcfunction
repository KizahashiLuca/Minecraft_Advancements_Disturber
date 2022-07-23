#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
tellraw @a ["",{"translate":"[物資投下] 物資が %s 秒後に","with":[{"score":{"name":"@s","objective":"SecondSummon"}}],"color":"green","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportMinecart set 1"},"color":"green","bold":false,"italic":false},{"text":" に投下されます。","color":"green","bold":false,"italic":false}]

## Remove a tag
tag @s remove MAD_NotSayNextMinecart