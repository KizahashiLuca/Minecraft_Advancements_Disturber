#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Detect time over
execute as @s[team=TeamA] run kill @a[team=TeamA,scores={Phase=21,Death=0}]
execute as @s[team=TeamB] run kill @a[team=TeamB,scores={Phase=21,Death=0}]
execute as @s[team=TeamC] run kill @a[team=TeamC,scores={Phase=21,Death=0}]
execute as @s[team=TeamD] run kill @a[team=TeamD,scores={Phase=21,Death=0}]
execute as @s[team=TeamE] run kill @a[team=TeamE,scores={Phase=21,Death=0}]