#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set position
execute as @a run function mad:system/common/set_position/calculate

## Draw position - actionbar
execute as @a[predicate=mad:system/common/set_position/eq_0] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"南"}],"color":"light_purple","bold":false,"italic":false}]
execute as @a[predicate=mad:system/common/set_position/eq_1] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"南西"}],"color":"light_purple","bold":false,"italic":false}]
execute as @a[predicate=mad:system/common/set_position/eq_2] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"西"}],"color":"light_purple","bold":false,"italic":false}]
execute as @a[predicate=mad:system/common/set_position/eq_3] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"北西"}],"color":"light_purple","bold":false,"italic":false}]
execute as @a[predicate=mad:system/common/set_position/eq_4] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"北"}],"color":"light_purple","bold":false,"italic":false}]
execute as @a[predicate=mad:system/common/set_position/eq_5] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"北東"}],"color":"light_purple","bold":false,"italic":false}]
execute as @a[predicate=mad:system/common/set_position/eq_6] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"東"}],"color":"light_purple","bold":false,"italic":false}]
execute as @a[predicate=mad:system/common/set_position/eq_7] run title @s actionbar ["",{"translate":"現在の座標 : (%s, %s, %s)    方角 : %s","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}},{"text":"南東"}],"color":"light_purple","bold":false,"italic":false}]