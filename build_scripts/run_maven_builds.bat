@echo off
setlocal ENABLEDELAYEDEXPANSION

REM Increase Maven timeout (default 30 s) – 10 min
set MAVEN_OPTS=-Dmaven.wagon.http.timeout=600000 -Dmaven.wagon.httpconnectionTimeout=600000

REM Build Agent Flex
pushd "C:\\Path\\To\\agent-flex"
call mvn clean install -DskipTests
popd

REM Build Astra Mind
pushd "C:\\Path\\To\\astra-mind"
call mvn clean install -DskipTests
popd

echo Maven builds completed.
