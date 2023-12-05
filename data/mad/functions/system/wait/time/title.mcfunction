#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Title message
title @a times 0 30 0
title @a title ["",{"text":"待機フェーズ","color":"white","bold":false,"italic":false}]
title @a subtitle [""]
title @a[predicate=mad:system/wait/time/second/eq_15_or_30] subtitle ["",{"score":{"name":"#mad","objective":"Second"},"color":"white","bold":false,"italic":false},{"text":"秒前","color":"white","bold":false,"italic":false}]
title @a[predicate=mad:system/wait/time/second/yellow_gage] subtitle ["",{"score":{"name":"#mad","objective":"Second"},"color":"yellow","bold":false,"italic":false}]
title @a[predicate=mad:system/wait/time/second/red_gage] subtitle ["",{"score":{"name":"#mad","objective":"Second"},"color":"red","bold":false,"italic":false}]
title @a[predicate=mad:system/wait/time/second/eq_zero] subtitle ["",{"text":"ゲーム開始","color":"red","bold":true,"italic":false}]