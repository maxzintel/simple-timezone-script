#!/bin/bash

DESIRED_TIMEZONE=$(TZ=America/New_York date -R)
EASTERN_DAYLIGHT_TIME=$(TZ=UTC+4 date -R)
EASTERN_STANDARD_TIME=$(TZ=UTC+5 date -R)

if [[ $DESIRED_TIMEZONE == $EASTERN_DAYLIGHT_TIME ]]; then
  export OFFSET=4
  echo $OFFSET
elif [[ $DESIRED_TIMEZONE == $EASTERN_STANDARD_TIME ]]; then
  export OFFSET=5
  echo $OFFSET
fi
