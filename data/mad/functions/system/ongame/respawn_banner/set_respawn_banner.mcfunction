#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:structure_void
setblock ~ ~ ~ minecraft:chest[facing=south]
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamA"]}}}] run function mad:system/ongame/respawn_banner/set_armor_stand/team_a
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamB"]}}}] run function mad:system/ongame/respawn_banner/set_armor_stand/team_b
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamC"]}}}] run function mad:system/ongame/respawn_banner/set_armor_stand/team_c
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamD"]}}}] run function mad:system/ongame/respawn_banner/set_armor_stand/team_d
execute as @s[type=minecraft:item,nbt={Item:{tag:{Tags:["RespawnBannerByDead","TeamE"]}}}] run function mad:system/ongame/respawn_banner/set_armor_stand/team_e
data modify entity @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"リスポーンバナー"}'},sort=nearest,limit=1] CustomName set from entity @s Item.tag.display.Name
data modify block ~ ~ ~ Items[0].tag merge from entity @s Item.tag
data modify block ~ ~ ~ Items[0].tag.Tags[0] set value "RespawnBannerFromChest"

## Kill banner
kill @s