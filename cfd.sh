#!/bin/bash

/usr/local/bin/confd -onetime -backend env

if [[ $DEBUG = true ]]; then
    echo "=============== config.ini ==============="
    cat /etc/pypicloud/config.ini
    echo "=========================================="
fi
