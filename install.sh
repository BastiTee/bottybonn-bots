#!/bin/bash

cd govbot-sdk
npm install 
cp .env.demo .env
cd ..

cd govbot-emulator
npm install
npm run build
cd ..

