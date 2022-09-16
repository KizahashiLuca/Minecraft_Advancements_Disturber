#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send stop messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  ゲームを中断します。","color":"red","bold":false,"italic":false}]