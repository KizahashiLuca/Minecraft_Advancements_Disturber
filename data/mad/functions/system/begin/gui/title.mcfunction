#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Title message
title @a times 0 10 0
title @a title ["",{"text":"初期設定フェーズ","color":"white","bold":false,"italic":false}]
title @a[predicate=!mad:player/host] subtitle ["",{"selector":"@p[predicate=mad:player/host]","color":"white","bold":true,"italic":false},{"text":" が初期設定中です。","color":"white","bold":false,"italic":false}]
title @a[predicate=mad:player/host] subtitle ["",{"selector":"@p[predicate=mad:player/host]","color":"white","bold":true,"italic":false},{"text":" は初期設定してください。","color":"white","bold":false,"italic":false}]