#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Notice of thief
execute as @s[scores={Phase=21,Death=0,UseNoticeOfThief=1..}] run function mad:system/ongame/notice_of_thief/detect_notice

## Time
execute as @s[tag=SetThief] run function mad:system/ongame/notice_of_thief/time/tick