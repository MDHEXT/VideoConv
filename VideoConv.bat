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

FOR /F "delims=" %%a in ('ffmpeg -version') DO (
	IF NOT DEFINED version (
		SET "version=%%a"
	) ELSE IF NOT DEFINED build (
		SET "build=%%a"
	)
)

IF NOT DEFINED mode ECHO Please input a video source type to continue & GOTO :EOF
IF !mode! LEQ 2 (
    IF !mode! EQU 1 SET "type=loop 1"
    IF !mode! EQU 2 SET "type=stream_loop -1"
) ELSE ( ECHO Please input a valid mode selection )

ffmpeg -%type% -i "%input%" -i "%input2%" -shortest -acodec copy -vcodec copy "%output%"

GOTO :EOF

:help_message
ECHO Video Conversion Help Test

ENDLOCAL