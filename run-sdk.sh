#!/bin/bash
cd "$( dirname "$( readlink -f "$0" )" )"
[ -z "$1" ] && { echo "No botname provided."; exit 1; }
[ -z "$( command -v forever )" ] && sudo -H npm install -g forever
cd govbot-sdk
forever --watch app.js -b ./additional_bots/${1}
