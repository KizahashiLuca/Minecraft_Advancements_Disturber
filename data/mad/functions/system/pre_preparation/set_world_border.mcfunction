#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Set world spawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world border
worldborder center ~ ~
execute if score #mad WorldBorder matches 0 run worldborder set 60000000
execute if score #mad WorldBorder matches 100 run worldborder set 102
execute if score #mad WorldBorder matches 200 run worldborder set 202
execute if score #mad WorldBorder matches 300 run worldborder set 302
execute if score #mad WorldBorder matches 400 run worldborder set 402
execute if score #mad WorldBorder matches 500 run worldborder set 502
execute if score #mad WorldBorder matches 600 run worldborder set 602
execute if score #mad WorldBorder matches 700 run worldborder set 702
execute if score #mad WorldBorder matches 800 run worldborder set 802
execute if score #mad WorldBorder matches 900 run worldborder set 902
execute if score #mad WorldBorder matches 1000 run worldborder set 1002
execute if score #mad WorldBorder matches 1100 run worldborder set 1102
execute if score #mad WorldBorder matches 1200 run worldborder set 1202
execute if score #mad WorldBorder matches 1300 run worldborder set 1302
execute if score #mad WorldBorder matches 1400 run worldborder set 1402
execute if score #mad WorldBorder matches 1500 run worldborder set 1502
execute if score #mad WorldBorder matches 1600 run worldborder set 1602
execute if score #mad WorldBorder matches 1700 run worldborder set 1702
execute if score #mad WorldBorder matches 1800 run worldborder set 1802
execute if score #mad WorldBorder matches 1900 run worldborder set 1902
execute if score #mad WorldBorder matches 2000 run worldborder set 2002