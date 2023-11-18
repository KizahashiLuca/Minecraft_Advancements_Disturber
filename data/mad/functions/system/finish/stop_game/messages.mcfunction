#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Send stop messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  ゲームを中断します。","color":"red","bold":false,"italic":false}]