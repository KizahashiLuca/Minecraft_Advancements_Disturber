#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 設定値保存
$data modify storage mad: rules.care_package \
  merge value \
  {\
    enable_elytra: $(enable_elytra),\
    enable_trident: $(enable_trident),\
    enable_efficiency_pickaxe: $(enable_efficiency_pickaxe),\
    enable_fortune_pickaxe: $(enable_fortune_pickaxe),\
    enable_armor_upgrader: $(enable_armor_upgrader),\
    enable_tool_upgrader: $(enable_tool_upgrader),\
    enable_emergency_call: $(enable_emergency_call),\
    enable_end_portal_frame: $(enable_end_portal_frame),\
    enable_energy_drink: $(enable_energy_drink),\
    enable_golden_boots: $(enable_golden_boots),\
    enable_notice_of_thief: $(enable_notice_of_thief),\
    enable_teleport_arrow: $(enable_teleport_arrow),\
    enable_totem_of_undying: $(enable_totem_of_undying),\
    enable_transmitter: $(enable_transmitter),\
  }

## ルートフェーズ移行/初期化
function mad:system/setting/root/initialize
