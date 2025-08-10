#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:message/begin
tellraw @a ['',{text:'  既にゲームを行っています。',color:'yellow',bold:false,italic:false}]
tellraw @a ['',{text:'  新しくトライアルは実施できません。',color:'white',bold:false,italic:false}]
tellraw @a ['',{translate:'  以下をクリックしてトライアルを中断できます。',color:'white',bold:false,italic:false}]
tellraw @a ['',{translate:'     >> %s',with:[{text:'トライアル中断',color:'red',bold:true,hover_event:{action:'show_text',value:'クリックしてトライアル中断'},click_event:{action:'run_command',command:'/function mad:stop'}}],color:'white',bold:false,italic:false}]
function mad:message/end