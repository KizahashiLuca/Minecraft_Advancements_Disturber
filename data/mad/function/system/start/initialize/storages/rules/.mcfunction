#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームルール
data modify storage mad: rules set value \
  {\
    IsTeam: 1,\
    InitialTime: 300,\
    BonusTimeOfAdvancements: 100,\
    CarePackageInterval: 300,\
    WorldBorder: 1500,\
    Difficulty: 2,\
    WeatherCycle: 'true',\
    DaylightCycle: 'true',\
    NumberOfCarePackages: 1,\
    BonusTimeOfKill: 200,\
    NumberOfTeams: 2,\
    SetTeamManual: 0,\
    DeathPenaltyTime: 0,\
    friendlyFire: 'true',\
    collisionRule: 'true',\
    nametagVisibility: 'true',\
    seeFriendlyInvisibles: 'true',\
    deathMessageVisibility: 'true',\
    IsTeamString: '$(IsTeam)',\
    InitialTimeString: '$(InitialTime)',\
    BonusTimeOfAdvancementsString: '$(BonusTimeOfAdvancements)',\
    CarePackageIntervalString: '$(CarePackageInterval)',\
    WorldBorderString: '$(WorldBorder)',\
    DifficultyString: '$(Difficulty)',\
    WeatherCycleString: '$(WeatherCycle)',\
    DaylightCycleString: '$(DaylightCycle)',\
    NumberOfCarePackagesString: '$(NumberOfCarePackages)',\
    BonusTimeOfKillString: '$(BonusTimeOfKill)',\
    NumberOfTeamsString: '$(NumberOfTeams)',\
    SetTeamManualString: '$(SetTeamManual)',\
    DeathPenaltyTimeString: '$(DeathPenaltyTime)',\
    friendlyFireString: '$(friendlyFire)',\
    collisionRuleString: '$(collisionRule)',\
    nametagVisibilityString: '$(nametagVisibility)',\
    seeFriendlyInvisiblesString: '$(seeFriendlyInvisibles)',\
    deathMessageVisibilityString: '$(deathMessageVisibility)',\
  }
