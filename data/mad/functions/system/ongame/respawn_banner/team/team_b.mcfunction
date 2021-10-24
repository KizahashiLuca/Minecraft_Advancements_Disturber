#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Message team b
execute as @s[scores={BannerDimension=1}] run tellraw @a[team=TeamB] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"オーバーワールド [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]
execute as @s[scores={BannerDimension=2}] run tellraw @a[team=TeamB] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"ネザー [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]
execute as @s[scores={BannerDimension=3}] run tellraw @a[team=TeamB] ["",{"selector":"@s"},{"text":"は ","color":"white"},{"translate":"エンド [%s, %s, %s]","with":[{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"},{"text":" にて死亡しました。","color":"white"}]