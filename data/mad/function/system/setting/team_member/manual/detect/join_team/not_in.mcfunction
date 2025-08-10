#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム不変メッセージ表示
$function mad:message/setting/team_member/stay_team with storage mad: team.$(team)

## テレポート
tp @s @e[predicate=mad:marker/respawn_beacon,limit=1]