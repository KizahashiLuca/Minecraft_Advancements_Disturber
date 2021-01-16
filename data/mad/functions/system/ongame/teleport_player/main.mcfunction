#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Detect teleport
execute if score #mad IsTeam matches 0 at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s ~ ~10 ~
execute if score #mad IsTeam matches 1 if score #mad DeadTeamA matches 1 at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s[team=TeamA] ~ ~10 ~
execute if score #mad IsTeam matches 1 if score #mad DeadTeamB matches 1 at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s[team=TeamB] ~ ~10 ~
execute if score #mad IsTeam matches 1 if score #mad DeadTeamC matches 1 at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s[team=TeamC] ~ ~10 ~
execute if score #mad IsTeam matches 1 if score #mad DeadTeamD matches 1 at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s[team=TeamD] ~ ~10 ~
execute if score #mad IsTeam matches 1 if score #mad DeadTeamE matches 1 at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s[team=TeamE] ~ ~10 ~
scoreboard players set @s TeleportMessage 0
scoreboard players enable @s TeleportMessage