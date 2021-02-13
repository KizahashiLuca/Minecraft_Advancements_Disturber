#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Send messages
execute as @s[scores={TanTheta=-4142..4142,PosXDiff=0..}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"東 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=4143..24142,PosXDiff=0..,PosZDiff=0..}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"南東方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=24143..,PosXDiff=0..,PosZDiff=0..}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"南方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=..-24143,PosXDiff=..0,PosZDiff=0..}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"南方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=-24142..-4143,PosXDiff=..0,PosZDiff=0..}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"南西方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=-4142..4142,PosXDiff=..0}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"西方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=4143..24142,PosXDiff=..0,PosZDiff=..0}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"北西方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=24143..,PosXDiff=..0,PosZDiff=..0}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"北方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=..-24143,PosXDiff=0..,PosZDiff=..0}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"北方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
execute as @s[scores={TanTheta=-24142..-4143,PosXDiff=0..,PosZDiff=..0}] run tellraw @s ["",{"text":"[発 信 機] ","color":"green"},{"selector":"@p[tag=TransmitPlayer]","color":"green"},{"text":" が ","color":"green"},{"translate":"北東方向 %sm先","with":[{"score":{"name":"@s","objective":"Distance"}}],"color":"green"},{"text":" にいます。","color":"green"}]
