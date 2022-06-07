#!/bin/bash

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
MINECRAFT_DIR=${BASE_DIR}/data/minecraft/advancements

## set rewards
i=1
cd "${MINECRAFT_DIR}"
for FILE in `find ${MINECRAFT_DIR} -maxdepth 2 -type f -name *.json`; do
  ## file name
  DIR=`echo "${FILE%/*}" | sed -e "s@${BASE_DIR}@@"`
  echo ${i} \.${DIR}/${FILE##*/}
  ## set value
  DIR=`echo "${FILE%/*}" | sed -e "s@${MINECRAFT_DIR}@@"`
  STEM=`echo "${FILE##*/}" | sed -e "s@\.json@@"`
  cat ${FILE} | jq ".rewards |= .+ {\"function\": \"mad:system/ongame/advancements${DIR}/${STEM}\"}" > ${FILE}
  ## addition
  i=$((i+1))
done