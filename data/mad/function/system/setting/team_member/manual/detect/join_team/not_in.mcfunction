#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム不変メッセージ表示
$function mad:message/setting/team_member/stay_team with storage mad: team.$(team)

## テレポート
tp @s @e[predicate=mad:marker/respawn_beacon,limit=1]