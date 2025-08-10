#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## MCVersion   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
scoreboard players set #mad MinorVersion 6
scoreboard players set #mad SnapshotVersion 0
scoreboard players set #mad PreReleaseVersion 0
scoreboard players set #mad ReleaseCandidateVersion 0
scoreboard players set #mad ReleaseVersion 0
execute if predicate mad:version/1.21/6/snapshot run scoreboard players set #mad SnapshotVersion 1
execute if predicate mad:version/1.21/6/pre-release run scoreboard players set #mad PreReleaseVersion 1
execute if predicate mad:version/1.21/6/release-candidate run scoreboard players set #mad ReleaseCandidateVersion 1
execute if predicate mad:version/1.21/6/release run scoreboard players set #mad ReleaseVersion 1