#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームが既に実行されている場合 新しいゲームを拒否
execute if predicate mad:phase/in_game run \
  function mad:message/ongoing/

## ゲームが実行されていない場合 新しいゲームを準備
$execute if predicate mad:phase/not_in_game run \
  function mad:system/start/initialize/ \
    {\
      type: '$(type)',\
    }
