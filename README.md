# Docker implementation of tvhProxy

Initial version zenon@skuza.net

Updated by roger@spydah.net

## Run with the following command:
    docker run -p 5004:5004 -d --rm -e TVH_TUNER_COUNT=1 -e TVH_URL=http://<your tvheadend ip address>:9981 tvhproxy python tvhProxy.py