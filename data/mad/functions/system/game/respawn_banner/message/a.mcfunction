#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Message team a
execute as @s[predicate=mad:system/game/respawn_banner/dimension/overworld] run tellraw @a ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"オーバーワールド"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/respawn_banner/dimension/the_nether] run tellraw @a ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"ネザー"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/respawn_banner/dimension/the_end] run tellraw @a ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"エンド"},{"score":{"name":"@s","objective":"BannerPosX"}},{"score":{"name":"@s","objective":"BannerPosY"}},{"score":{"name":"@s","objective":"BannerPosZ"}}],"color":"green"}],"color":"white","bold":false,"italic":false}]

## Set scoreboard
execute unless predicate mad:system/game/respawn_banner/set_sidebar/a run scoreboard players set スペース SidebarA -5
execute unless predicate mad:system/game/respawn_banner/set_sidebar/a run scoreboard players set 【リスポーンバナー座標】 SidebarA -6
scoreboard players display numberformat スペース SidebarA blank
scoreboard players display name スペース SidebarA [""]
scoreboard players display numberformat 【リスポーンバナー座標】 SidebarA blank
scoreboard players display name 【リスポーンバナー座標】 SidebarA [{"text":"【リスポーンバナー座標】","color":"red","bold":true}]
scoreboard players operation @s SidebarA = #mad_team_a SidebarA
scoreboard players remove #mad_team_a SidebarA 1

## Modify storage
data modify storage mad: death.team set value A
execute store result storage mad: death.x int 1.0 run scoreboard players get @s BannerPosX
execute store result storage mad: death.y int 1.0 run scoreboard players get @s BannerPosY
execute store result storage mad: death.z int 1.0 run scoreboard players get @s BannerPosZ

## Set display
function mad:system/game/respawn_banner/message/set_coordinate with storage mad: death