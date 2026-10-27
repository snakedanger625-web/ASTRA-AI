@echo off
setlocal

REM Upgrade pip
python -m pip install --upgrade pip

REM Astra Enterprise
pushd "C:\\Path\\To\\astra-enterprise"
python -m pip install -r requirements.txt
popd

REM Education Bot
pushd "C:\\Path\\To\\education-bot"
python -m pip install -r requirements.txt
popd

REM Voxadesk
pushd "C:\\Path\\To\\voxadesk"
python -m pip install -r requirements.txt
popd

REM Zavro
pushd "C:\\Path\\To\\zavro"
python -m pip install -r requirements.txt
popd

echo pip installations completed.
