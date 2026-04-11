#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:message/begin
tellraw @a ['',{text:'  既にゲームを行っています。',color:'yellow',bold:false,italic:false}]
tellraw @a ['',{text:'  新しくトライアルは実施できません。',color:'white',bold:false,italic:false}]
tellraw @a ['',{translate:'  以下をクリックしてトライアルを中断できます。',color:'white',bold:false,italic:false}]
tellraw @a ['',{translate:'     >> %s',with:[{text:'トライアル中断',color:'red',bold:true,hover_event:{action:'show_text',value:'クリックしてトライアル中断'},click_event:{action:'run_command',command:'/function mad:stop'}}],color:'white',bold:false,italic:false}]
function mad:message/end