#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.4 loot mad:setting/choose_setting/choose_minecart_interval
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/number/digit_0100
loot replace entity @p[tag=Host] inventory.13 loot mad:setting/number/digit_0010
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/number/digit_0001
loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.22 loot mad:setting/common/reset
execute if score #mad CartInterval matches 1.. run loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine