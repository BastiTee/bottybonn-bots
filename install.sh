#!/bin/bash

git submodule init
git submodule update
git submodule add -f git@github.com:BastiTee/bottybonn-botEventCalendar.git \
./govbot-sdk/additional_bots/botEventCalendar

cd govbot-sdk
npm install
cp .env.demo .env
cd ..

cd govbot-emulator
npm install
npm run build
cd ..
