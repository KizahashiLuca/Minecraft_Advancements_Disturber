#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
$tellraw @a ['',{text:'[試合終了] $(text)しました。',color:'green'}]
tellraw @p[predicate=mad:player/host] ['',{text:'  ゲームを終了する場合は、',color:'green'}]
tellraw @p[predicate=mad:player/host] ['',{translate:'  %sを押してください。',with:[{text:'こちら',color:'light_purple',bold:true,underlined:true,hover_event:{action:'show_text',value:'クリックしてゲーム終了'},click_event:{action:'run_command',command:'/trigger ExitTrigger set 1'}}],color:'green'}]