#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
$tellraw @a ['',{text:'[支援物資] 支援物資$(number)が ',color:'green'},{text:'[$(x), $(z)]',color:'green',hover_event:{action:'show_text',contents:{text:'スペクテイター時、クリックでテレポート',color:'gray'}},click_event:{action:'run_command',command:'/trigger TeleportToCarePackage set $(number)'},color:'green'},{text:' に投下されました。',color:'green'}]