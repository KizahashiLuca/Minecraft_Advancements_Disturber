#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Message team a
execute as @s[scores={BannerDimension=1}] run tellraw @a[team=TeamA] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"オーバーワールド [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]
execute as @s[scores={BannerDimension=2}] run tellraw @a[team=TeamA] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"ネザー [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]
execute as @s[scores={BannerDimension=3}] run tellraw @a[team=TeamA] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"エンド [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]