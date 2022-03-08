@ECHO off
:: video conversion script, MDHEXT 2022
:: The Purpose of this script is to take one input image or video and one input audio file and output a video with the image/video/gif looped for the length of the audio file.
:: This is already pretty simple, so this script is mostly for fun.

SETLOCAL ENABLEDELAYEDEXPANSION
IF /i NOT "%~1" == "" ( 
    IF /i NOT "%~1" == "help" (
        GOTO :variableconfig
    ) ELSE (
        IF /i "%~1" == "h" ( 
            GOTO :help_message
        ) ELSE ( 
            GOTO :variableconfig 
        )
    )
)

:variableconfig
IF NOT "%~1" == "" (
    IF "%~1" == "-i" (
        IF NOT DEFINED input (
            SET "input=%~dpnx2"
        ) ELSE (
            SET "input2=%~dpnx2"
        ) & SHIFT
    )
    IF "%~1" == "-o" SET "output=%~dpn2.mkv" & SHIFT
    IF "%~1" == "-m" SET "mode=%~2" & SHIFT
SHIFT & GOTO :variableconfig
)

IF NOT DEFINED mode ECHO Please input a video source type to continue & GOTO :EOF

ECHO var1 = %input% var2 = %input2% out = %output%
GOTO :EOF
:help_message
ECHO Video Conversion Help Test
ENDLOCAL