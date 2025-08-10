#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
$data modify storage mad: death.victim_color set value '$(color)'
$data modify storage mad: death.victim_address set value '#mad_team_$(team)'
$data modify storage mad: death.victim_target_selector set value '@a[predicate=mad:player/team/$(team)]'
$data modify storage mad: death.victim_sidebar set value 'Sidebar$(uppercase)'