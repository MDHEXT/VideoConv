# VideoConv
A video conversion tool that allows you to take one image or video and one audio file to make a video.
## important information
This Script requires that you have FFmpeg setup in your system environment tables or that you run this script in the same sirectory as your FFmpeg executable.
To setup FFmpeg in your system environment Tables:
* Download a copy of [FFmpeg](https://www.ffmpeg.org/download.html#build-windows) for Windows
* If you're on windows 10 or 11, simply press the Windows Key and s keys simultaniously to bring up the search window. From there, simply type "Edit the system environment variables" 
    
    ![image](https://user-images.githubusercontent.com/42657178/157209063-115067e7-4fa7-4647-a59f-a6a778855a9d.png)
   
* if you're on an earlier revision of the Windows Operating System, You'll need to simultaniously hit the Windows Key and X button to bring up the Power user task menu. From there, click "system" then "advanced system settings" in the window that opens and then navigate to the "Advanced" tab in the next window that opens.
* After that, in the window that opens, click on the "Environment Variables" button near the bottom right corner of the window.
    
    ![image](https://user-images.githubusercontent.com/42657178/157209462-47992666-552d-4c27-9090-abffb82c1340.png)

* Next, in the windows that opens, click on the "path" variable and then click "edit".

    ![image](https://user-images.githubusercontent.com/42657178/157210011-6f7faa90-15ad-4641-836e-cf8313a5ca78.png)

* Next, Click the "New" button near the top right corner of the new window that opens up. You shoul now see a blinking cursor indicating that you are typing.

    ![image](https://user-images.githubusercontent.com/42657178/157211692-7b15a1a9-2ab7-429e-b260-312cb88c8e4e.png)

* Simply Paste the path to your FFmpeg Executable there and click "ok" to save your changes.

    ![image](https://user-images.githubusercontent.com/42657178/157210209-35d66d71-4650-4e56-b2c6-4fe2d8f0b16c.png)

## How to use

Always make sure to place your image or video first
``-i image.png -i audio.mp3``
Specify whether your input image or video is such:

* 1 is for an image file
* 2 is for a video file

``-i image.png -m 1``

Always specify an output folder, as of the time of writing this, I have not implemented any automatic path output.

``-o [outputfilename]`` or ``-o [C:\outputpath\outputfilename]``
File Extensions added to the output name or path **WILL** be ignored and output will always be in the MKV container.