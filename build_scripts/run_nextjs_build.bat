@echo off
setlocal

pushd "C:\\Path\\To\\VAI"

REM Clean install dependencies
npm ci

REM Production build
npm run build

popd

echo Next.js build completed.
