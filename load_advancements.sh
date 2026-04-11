#!/bin/bash

## file comment
function filecomment() {
  cat <<EOF > $1
#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

EOF
}

## objectives list
declare -a objectives=()
declare -a titles=()
## json list
declare -a jsons=()

## detect installed
if ! type "jq" > /dev/null 2>&1 ; then
  echo;
  echo "[ERROR] Command 'jq' not found, but can be installed with:"
  echo;
  echo "sudo apt install jq"
  echo;

  exit 1
fi

## directory path
BASE_DIR=$(cd $(dirname $0); pwd)
AD_NAME=("minecraft" "mad")
GAME_DIR=${BASE_DIR}/data/mad/function/system/game/advancement/
if [ ! -e "${GAME_DIR}" ]; then
  mkdir "${GAME_DIR}"
fi

## set rewards
i=1
for AD in "${AD_NAME[@]}"; do
  AD_DIR=${BASE_DIR}/data/${AD}/advancement/
  cd "${AD_DIR}"
  for FILE in `find ${AD_DIR} -maxdepth 2 -type f -name *.json`; do
    ## file name
    DIR=`echo "${FILE%/*}" | sed -e "s@${AD_DIR}@@"`
    STEM=`echo "${FILE##*/}" | sed -e "s@\.json@@"`
    TMP=tmp_${DIR}_${STEM}.json
    echo ${i} ${DIR} - ${STEM}
    ## skip root
    if [ ${STEM} == "root" ]; then
      continue
    fi
    ## create directory
    if [ ! -e "${GAME_DIR}/${DIR}" ]; then
      mkdir "${GAME_DIR}/${DIR}"
    fi
    if [ ! -e "${GAME_DIR}/${DIR}/${STEM}" ]; then
      mkdir "${GAME_DIR}/${DIR}/${STEM}"
    fi
    ## set value
    ADV_OBJECTIVE=Advancements_${DIR^}_${STEM}
    TITLE=`cat "${FILE}" | jq '.display.title.translate' | sed -e "s/\"//g"`
    DESCRIPTION=`cat "${FILE}" | jq '.display.description.translate' | sed -e "s/\"//g"`
    FRAME=`cat "${FILE}" | jq '.display.frame' | sed -e "s/\"//g"`
    COLOR=green
    if [ ${FRAME} == "null" ]; then
      FRAME=task
    fi
    if [ ${FRAME} == "challenge" ]; then
      COLOR=dark_purple
    fi
    cat "${FILE}" | jq ".rewards |= .+ {\"function\":\"mad:system/game/advancement/${DIR}/${STEM}/\"}" > "${TMP}"
    cat "${TMP}" > "${FILE}"
    sed -i -e 's/$/\r/g' "${FILE}"
    ## detect function
    FUNC1=${GAME_DIR}/${DIR}/${STEM}/.mcfunction
    FUNC2=${GAME_DIR}/${DIR}/${STEM}/branch.mcfunction
    FUNC3=${GAME_DIR}/${DIR}/${STEM}/individual.mcfunction
    FUNC4=${GAME_DIR}/${DIR}/${STEM}/team.mcfunction
    ## make file - detect
    filecomment "${FUNC1}"
    cat << EOF >> "${FUNC1}"
## 進捗検出
execute unless predicate mad:phase/not_game_phase \\
  as @s[predicate=mad:player/alive/,scores={${ADV_OBJECTIVE}=0}] run \\
  function mad:system/game/advancement/${DIR}/${STEM}/branch
EOF
    sed -i -e 's/$/\r/g' "${FUNC1}"
    ## make file - branch
    filecomment "${FUNC2}"
    cat << EOF >> "${FUNC2}"
## 個人戦
execute if predicate mad:gamerule/match_mode/individual/ \\
  as @s run \\
  function mad:system/game/advancement/${DIR}/${STEM}/individual

## チーム戦 - チーム分岐
execute if predicate mad:gamerule/match_mode/team \\
  if score #mad_team_a ${ADV_OBJECTIVE} matches 0 \\
  as @s[predicate=mad:player/team/a] run \\
  function mad:system/game/advancement/${DIR}/${STEM}/team with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team \\
  if score #mad_team_b ${ADV_OBJECTIVE} matches 0 \\
  as @s[predicate=mad:player/team/b] run \\
  function mad:system/game/advancement/${DIR}/${STEM}/team with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team \\
  if score #mad_team_c ${ADV_OBJECTIVE} matches 0 \\
  as @s[predicate=mad:player/team/c] run \\
  function mad:system/game/advancement/${DIR}/${STEM}/team with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team \\
  if score #mad_team_d ${ADV_OBJECTIVE} matches 0 \\
  as @s[predicate=mad:player/team/d] run \\
  function mad:system/game/advancement/${DIR}/${STEM}/team with storage mad: team.d

## スコアボード設定
scoreboard players set @s[scores={${ADV_OBJECTIVE}=0}] ${ADV_OBJECTIVE} 1
EOF
    sed -i -e 's/$/\r/g' "${FUNC2}"
    ## make file - individual
    filecomment "${FUNC3}"
    cat << EOF >> "${FUNC3}"
## 進捗達成フラグ
scoreboard players set @s ${ADV_OBJECTIVE} 1

## 進捗数加算
scoreboard players add @s HasAdvancements 1

## タイムボーナス加算
scoreboard players operation @s TimeLimit += #mad BonusTimeOfAdvancements
scoreboard players operation @s Second += #mad BonusTimeOfAdvancements

## 進捗達成メッセージ
tellraw @s \\
  [\\
    '',\\
    {\\
      translate: 'chat.type.advancement.${FRAME}',\\
      with: [\\
        {\\
          selector: '@s',\\
        },\\
        {\\
          translate: '[%s]',\\
          color: '${COLOR}',\\
          with: [\\
            {\\
              translate: '${TITLE}',\\
              hover_event: {\\
                action: 'show_text',\\
                value: [\\
                  {\\
                    translate: '%s\\n%s',\\
                    color: '${COLOR}',\\
                    with: [\\
                      {\\
                        translate: '${TITLE}',\\
                      },\\
                      {\\
                        translate: '${DESCRIPTION}',\\
                      },\\
                    ],\\
                  },\\
                ],\\
              },\\
            },\\
          ],\\
        },\\
      ],\\
    },\\
  ]
EOF
    sed -i -e 's/$/\r/g' "${FUNC3}"
    ## make file - team
    j=0
    for team in {A..D}; do
      filecomment "${FUNC4}"
      cat << EOF >> "${FUNC4}"
## 進捗達成フラグ
\$scoreboard players set @a[predicate=mad:player/team/\$(team)] ${ADV_OBJECTIVE} 1
\$scoreboard players set #mad_team_\$(team) ${ADV_OBJECTIVE} 1

## 進捗数加算
scoreboard players add @s HasAdvancements 1
\$scoreboard players add #mad_team_\$(team) HasAdvancements 1

## タイムボーナス加算
\$scoreboard players operation #mad_team_\$(team) TimeLimit += #mad BonusTimeOfAdvancements
\$scoreboard players operation #mad_team_\$(team) Second += #mad BonusTimeOfAdvancements

## 進捗付与
\$advancement grant @a[predicate=mad:player/team/\$(team)] only ${AD}:${DIR}/${STEM}

## 進捗達成メッセージ
\$tellraw @a[predicate=mad:player/team/\$(team)] \\
  [\\
    '',\\
    {\\
      translate: 'chat.type.advancement.${FRAME}',\\
      with: [\\
        {\\
          text: '\$(text)チーム',\\
          color: '\$(color)',\\
          bold: true\\
        },\\
        {\\
          translate: '[%s]',\\
          color: '${COLOR}',\\
          with: [\\
            {\\
              translate: '${TITLE}',\\
              hover_event: {\\
                action: 'show_text',\\
                value: [\\
                  {\\
                    translate: '%s\n%s',\\
                    color: '${COLOR}',\\
                    with: [\\
                      {\\
                        translate: '${TITLE}',\\
                      },\\
                      {\\
                        translate: '${DESCRIPTION}',\\
                      },\\
                    ],\\
                  },\\
                ],\\
              },\\
            },\\
          ],\\
        },\\
      ],\\
    },\\
  ]
EOF
      sed -i -e 's/$/\r/g' "${FUNC4}"
      j=$((j+1))
    done
    ## add objectives
    objectives=("${objectives[@]}" ${ADV_OBJECTIVE})
    titles=("${titles[@]}" "${TITLE}")
    ## remove tmp json
    jsons+=(${TMP})
    ## increment
    i=$((i+1))
  done
done

## remove jsons
for AD in "${AD_NAME[@]}"; do
  AD_DIR=${BASE_DIR}/data/${AD}/advancement/
  cd "${AD_DIR}"
  for json in ${jsons[@]}; do
    if [ -e "${json}" ]; then
      rm "${json}"
    fi
  done
done

## show adding objectives list
ADD_SCORE=${BASE_DIR}/data/mad/function/system/start/initialize/add_scoreboards/advancements.mcfunction
filecomment "${ADD_SCORE}"
echo "## 進捗用スコアボード追加" >> "${ADD_SCORE}"
i=0
for objective in ${objectives[@]}; do
  ## add objective
  echo "scoreboard objectives add ${objective} dummy ['', {text: '${titles[i]}'}]" >> "${ADD_SCORE}"
  ## increment
  i=$((i+1))
done
echo; >> "${ADD_SCORE}"
sed -i -e 's/$/\r/g' "${ADD_SCORE}"

## show setting objectives list
SET_SCORE=${BASE_DIR}/data/mad/function/system/start/initialize/set_scoreboards/advancements.mcfunction
filecomment "${SET_SCORE}"
echo "## 進捗用スコアボードリセット" >> "${SET_SCORE}"
i=0
for objective in ${objectives[@]}; do
  ## add objective
  cat << EOF >> "${SET_SCORE}"
scoreboard players set @a[predicate=mad:player/] ${objective} 0
scoreboard players set #mad_team_a ${objective} 0
scoreboard players set #mad_team_b ${objective} 0
scoreboard players set #mad_team_c ${objective} 0
scoreboard players set #mad_team_d ${objective} 0
EOF
  ## increment
  i=$((i+1))
done
sed -i -e 's/$/\r/g' "${SET_SCORE}"

## show setting objectives list
SET_PLAYER_SCORE=${BASE_DIR}/data/mad/function/system/start/initialize/set_scoreboards/player/advancements.mcfunction
filecomment "${SET_PLAYER_SCORE}"
echo "## 進捗用スコアボードリセット" >> "${SET_PLAYER_SCORE}"
i=0
for objective in ${objectives[@]}; do
  ## add objective
  echo "scoreboard players set @s ${objective} 0" >> "${SET_PLAYER_SCORE}"
  ## increment
  i=$((i+1))
done
sed -i -e 's/$/\r/g' "${SET_PLAYER_SCORE}"

## show removing objectives list
REM_SCORE=${BASE_DIR}/data/mad/function/system/reset/scoreboards/advancements.mcfunction
filecomment "${REM_SCORE}"
echo "## 進捗用スコアボード削除" >> "${REM_SCORE}"
i=0
for objective in ${objectives[@]}; do
  ## remove objective
  echo "scoreboard objectives remove ${objective}" >> "${REM_SCORE}"
  ## increment
  i=$((i+1))
done
sed -i -e 's/$/\r/g' "${REM_SCORE}"
