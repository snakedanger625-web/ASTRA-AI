@echo off
setlocal

pushd "C:\\Path\\To\\agentic3dcreature"

REM Clean install dependencies
npm ci

REM Expo web build (production) – adjust target if you need Android/iOS
npx expo-cli build:web --no-dev --release-channel default

popd

echo Expo build completed.
