#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set position
function mad:system/ongame/set_position/calculate

## Draw position - actionbar
title @s[scores={Angle=0}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 南"}]
title @s[scores={Angle=1}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 南西"}]
title @s[scores={Angle=2}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 西"}]
title @s[scores={Angle=3}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 北西"}]
title @s[scores={Angle=4}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 北"}]
title @s[scores={Angle=5}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 北東"}]
title @s[scores={Angle=6}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 東"}]
title @s[scores={Angle=7}] actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")    方角 : 南東"}]