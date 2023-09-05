#!/bin/bash
# This script downloads Covid data and displays it.

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA | jq '.[0].positive')
NEGATIVE=$(echo $DATA | jq '.[0].negative')
CHOSPITALIZED=$(echo $DATA | jq '.[0].hospitalizedCurrently')
THOSPITALIZED=$(echo $DATA | jq '.[0].hospitalizedCumulative')
TODAY=$(date)

echo "On $TODAY, there were $POSITIVE positive COVID cases, $NEGATIVE negative COVID cases, $CHOSPITALIZED currently hospitalized, and $THOSPITALIZED total hospitalized."


