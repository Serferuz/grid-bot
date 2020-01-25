#!/bin/bash

(
	echo "updating code from github"
	cd ../grid-bot && git pull && npm i \
	cd ../grid-host && git pull && npm i \
	cd ../grid-apps && git pull && npm i
    echo "code update complete"
) | tee -a /tmp/update-code.log