#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Title message
title @a times 0 30 0
title @a title ["",{"text":"待機フェーズ","color":"white","bold":false,"italic":false}]
title @a[predicate=mad:system/wait/time/second/eq_15_or_30] subtitle ["",{"score":{"name":"#mad","objective":"Second"},"color":"white","bold":false,"italic":false},{"text":"秒前","color":"white","bold":false,"italic":false}]
title @a[predicate=mad:system/wait/time/second/yellow_gage] subtitle ["",{"score":{"name":"#mad","objective":"Second"},"color":"yellow","bold":false,"italic":false}]
title @a[predicate=mad:system/wait/time/second/red_gage] subtitle ["",{"score":{"name":"#mad","objective":"Second"},"color":"red","bold":false,"italic":false}]
title @a[predicate=mad:system/wait/time/second/eq_zero] subtitle ["",{"text":"ゲーム開始","color":"red","bold":true,"italic":false}]