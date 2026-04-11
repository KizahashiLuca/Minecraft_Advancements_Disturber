#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
$data modify storage mad: death.victim_color set value '$(color)'
$data modify storage mad: death.victim_address set value '#mad_team_$(team)'
$data modify storage mad: death.victim_target_selector set value '@a[predicate=mad:player/team/$(team)]'
$data modify storage mad: death.victim_sidebar set value 'Sidebar$(uppercase)'