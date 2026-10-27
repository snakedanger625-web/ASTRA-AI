@echo off
setlocal

REM List of project directories (modify as needed)
set PROJECTS=^
    C:\\Path\\To\\agent-flex ^
    C:\\Path\\To\\astra-mind ^
    C:\\Path\\To\\astra-enterprise ^
    C:\\Path\\To\\education-bot ^
    C:\\Path\\To\\voxadesk ^
    C:\\Path\\To\\zavro ^
    C:\\Path\\To\\agentic3dcreature ^
    C:\\Path\\To\\VAI

for %%D in (%PROJECTS%) do (
    echo Building Docker image for %%D
    pushd "%%D"
    if exist Dockerfile (
        docker build -t "%%~nD:latest" .
    ) else (
        echo No Dockerfile found in %%D, skipping.
    )
    popd
)

echo All Docker builds finished.
