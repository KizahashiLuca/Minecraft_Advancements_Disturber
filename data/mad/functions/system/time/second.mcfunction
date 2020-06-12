#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time
scoreboard players remove @s Second 1
scoreboard players set @s[scores={Second=..-1}] Second 0

## Store time for bossbar
execute as @s[scores={Participant=1..10}] run function mad:system/time/participant/branch_10
execute as @s[scores={Participant=11..20}] run function mad:system/time/participant/branch_20
execute as @s[scores={Participant=21..30}] run function mad:system/time/participant/branch_30
execute as @s[scores={Participant=31..40}] run function mad:system/time/participant/branch_40
execute as @s[scores={Participant=41..50}] run function mad:system/time/participant/branch_50
execute as @s[scores={Participant=51..60}] run function mad:system/time/participant/branch_60
execute as @s[scores={Participant=61..70}] run function mad:system/time/participant/branch_70
execute as @s[scores={Participant=71..80}] run function mad:system/time/participant/branch_80
execute as @s[scores={Participant=81..90}] run function mad:system/time/participant/branch_90
execute as @s[scores={Participant=91..100}] run function mad:system/time/participant/branch_100

## Process the sound system
playsound minecraft:item.trident.return master @s[scores={Second=4..10}] ~ ~ ~ 1 1 1
playsound minecraft:item.trident.throw master @s[scores={Second=1..3}] ~ ~ ~ 1 1 1
playsound minecraft:item.trident.thunder master @s[scores={Second=0}] ~ ~ ~ 1 1 1