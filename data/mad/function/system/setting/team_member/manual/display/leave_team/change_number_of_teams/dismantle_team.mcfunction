#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チームを解体
$execute as @a[predicate=mad:player/team/$(team)] run function mad:system/setting/team_member/manual/display/leave_team/leave_team {text:'$(text)',color:'$(color)'}