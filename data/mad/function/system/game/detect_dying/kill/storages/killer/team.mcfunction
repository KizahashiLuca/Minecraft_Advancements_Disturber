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
tellraw @a [{text:'test game/detect_dying/kill/storages/killer/team'}]
$data modify storage mad: death.killer_color set value '$(color)'
$data modify storage mad: death.killer_address set value '#mad_team_$(team)'
$data modify storage mad: death.killer_target_selector set value '@a[predicate=mad:player/team/$(team)]'
data modify storage mad: death.message_selector set value 'text'
$data modify storage mad: death.killer_team set value '$(team)'
$data modify storage mad: death.killer_name set value '$(text)チーム'