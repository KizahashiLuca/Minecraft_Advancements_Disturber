#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Message team d
execute as @s[scores={BannerDimension=1}] run tellraw @a[team=TeamD] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"オーバーワールド [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]
execute as @s[scores={BannerDimension=2}] run tellraw @a[team=TeamD] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"ネザー [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]
execute as @s[scores={BannerDimension=3}] run tellraw @a[team=TeamD] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"エンド [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]