#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チームを解体
$execute as @a[predicate=mad:player/team/$(team)] run function mad:system/setting/team_member/manual/display/leave_team/leave_team {text:'$(text)',color:'$(color)'}