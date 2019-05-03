MODEL_ID=$(/bin/date -u +%Y%m%dT%H%M%S)
forseti inventory create --import_as ${MODEL_ID}
forseti model use ${MODEL_ID}
forseti scanner run
forseti notifier run
