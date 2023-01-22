#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Message team c
execute as @s[predicate=mad:system/game/respawn_banner/dimension/overworld] run tellraw @a ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"オーバーワールド"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/respawn_banner/dimension/the_nether] run tellraw @a ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"ネザー"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/respawn_banner/dimension/the_end] run tellraw @a ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"エンド"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]