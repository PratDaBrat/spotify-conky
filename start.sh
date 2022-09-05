#!/bin/bash

set -ex

cd "$(dirname "$0")"

conky -q -c ./conky/text.lua -d &>/dev/null
conky -q -c ./conky/art.lua -d &> /dev/null
