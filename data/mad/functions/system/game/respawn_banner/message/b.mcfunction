#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Message team b
execute as @s[predicate=mad:system/game/respawn_banner/dimension/overworld] run tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%sは %s にて死亡しました。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"オーバーワールド"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/respawn_banner/dimension/the_nether] run tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%sは %s にて死亡しました。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"ネザー"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/respawn_banner/dimension/the_end] run tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%sは %s にて死亡しました。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"エンド"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]